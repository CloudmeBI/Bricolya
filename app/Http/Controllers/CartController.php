<?php

namespace App\Http\Controllers;

use App\Category;
use App\Color;
use App\FlashDeal;
use App\Product;
use Cookie;
use Illuminate\Http\Request;
use Session;

class CartController extends Controller
{
    public function index(Request $request)
    {
        //dd($cart->all());
        $categories = Category::all();
        return view('frontend.view_cart', compact('categories'));
    }

    public function showCartModal(Request $request)
    {
        $product = Product::find($request->id);
        return view('frontend.partials.addToCart', compact('product'));
    }

    public function updateNavCart(Request $request)
    {
        return view('frontend.partials.cart');
    }

    public function addToCart(Request $request)
    {
        $product = Product::find($request->id);

        $data = array();
        $data['id'] = $product->id;
        $str = '';
        $tax = 0;

        //check the color enabled or disabled for the product
        if ($request->has('color')) {
            $data['color'] = $request['color'];
            $str = Color::where('code', $request['color'])->first()->name;
        }

        if ($product->digital != 1) {
            //Gets all the choice values of customer choice option and generate a string like Black-S-Cotton
            foreach (json_decode(Product::find($request->id)->choice_options) as $key => $choice) {
                if ($str != null) {
                    $str .= '-' . str_replace(' ', '', $request['attribute_id_' . $choice->attribute_id]);
                } else {
                    $str .= str_replace(' ', '', $request['attribute_id_' . $choice->attribute_id]);
                }
            }
        }

        $data['variant'] = $str;

        if ($str != null && $product->variant_product) {
            $product_stock = $product->stocks->where('variant', $str)->first();
            $price = $product_stock->price;
            $quantity = $product_stock->qty;

            if ($quantity >= $request['quantity']) {
                // $variations->$str->qty -= $request['quantity'];
                // $product->variations = json_encode($variations);
                // $product->save();
            } else {
                return view('frontend.partials.outOfStockCart');
            }
        } else {
            $price = $product->unit_price;
        }

        //discount calculation based on flash deal and regular discount
        //calculation of taxes
        $flash_deals = \App\FlashDeal::where('status', 1)->get();
        $inFlashDeal = false;
        
        if (!$inFlashDeal) {
            if ($product->discount_type == 'percent') {
                $price -= ($price * $product->discount) / 100;
            } elseif ($product->discount_type == 'amount') {
                $price -= $product->discount;
            }
        }

        if ($product->tax_type == 'percent') {
            $tax = ($price * $product->tax) / 100;
        } elseif ($product->tax_type == 'amount') {
            $tax = $product->tax;
        }

        $data['quantity'] = $request['quantity'];
        $data['price'] = $price;
        $data['tax'] = $tax;
        $data['shipping'] = $product->shipping_cost;
        $data['product_referral_code'] = null;
        $data['digital'] = $product->digital;

        if ($request['quantity'] == null) {
            $data['quantity'] = 1;
        }

        if (Cookie::has('referred_product_id') && Cookie::get('referred_product_id') == $product->id) {
            $data['product_referral_code'] = Cookie::get('product_referral_code');
        }

        if ($request->session()->has('cart')) {
            $foundInCart = false;
            $cart = collect();

            foreach ($request->session()->get('cart') as $key => $cartItem) {
                if ($cartItem['id'] == $request->id) {
                    if ($cartItem['variant'] == $str) {
                        $foundInCart = true;
                        $cartItem['quantity'] += $request['quantity'];
                    }
                }
                $cart->push($cartItem);
            }

            if (!$foundInCart) {
                $cart->push($data);
            }
            $request->session()->put('cart', $cart);
        } else {
            $cart = collect([$data]);
            $request->session()->put('cart', $cart);
        }

        $this->addPromotionProductsToCart($request, $request->flash_deal_id, $request['quantity']);

        return view('frontend.partials.addedToCart', compact('product', 'data'));
    }

    public function conditionIsMet(Request $request, $flashDeal, $mainProductQuantity)
    {
        if (
            $flashDeal->conditions["type"] == "product_bought" &&
            $mainProductQuantity >= $flashDeal->conditions["quantity"]
        ) {
            return true;
        }
        return false;
    }

    public function addPromotionProductsToCart(Request $request, $flashDealId, $mainProductQuantity)
    {
        $flashDeal = FlashDeal::findOrFail($flashDealId);
        if (!$flashDealId || !$this->conditionIsMet($request, $flashDeal, $mainProductQuantity)) {
            return;
        }

        $products = $flashDeal->flash_deal_products->map(function ($fdp) {return $fdp->product;});
        foreach ($products as $product) {
            $data = array();
            $data['id'] = $product->id;
            $str = '';
            $tax = 0;

            if ($product->digital != 1) {
                //Gets all the choice values of customer choice option and generate a string like Black-S-Cotton
                foreach (json_decode($product->choice_options) as $key => $choice) {
                    if ($str != null) {
                        $str .= '-' . str_replace(' ', '', $request['attribute_id_' . $choice->attribute_id]);
                    } else {
                        $str .= str_replace(' ', '', $request['attribute_id_' . $choice->attribute_id]);
                    }
                }
            }

            $data['variant'] = $str;

            if ($str != null && $product->variant_product) {
                $product_stock = $product->stocks->where('variant', $str)->first();
                $price = $product_stock->price;
                $quantity = $product_stock->qty;

                if ($quantity >= $request['quantity']) {
                    // $variations->$str->qty -= $request['quantity'];
                    // $product->variations = json_encode($variations);
                    // $product->save();
                }
            } else {
                $price = $product->unit_price;
            }

            //discount calculation based on flash deal and regular discount
            //calculation of taxes
            if ($product->flashDealProduct->discount_type == 'percent') {
                $price -= ($price * $product->flashDealProduct->discount) / 100;
            } elseif ($product->flashDealProduct->discount_type == 'amount') {
                $price -= $product->flashDealProduct->discount;
            }

            $productData = collect($flashDeal->data)
                ->filter(function ($data) use ($product) {
                    return $data["product_id"] == $product->id;
                })[0];
            $data['quantity'] = $productData["quantity"];
            $data['price'] = $price;
            $data['tax'] = 0;
            $data['shipping'] = $product->shipping_cost;
            $data['product_referral_code'] = null;
            $data['digital'] = $product->digital;

            if (Cookie::has('referred_product_id') && Cookie::get('referred_product_id') == $product->id) {
                $data['product_referral_code'] = Cookie::get('product_referral_code');
            }

            if ($request->session()->has('cart')) {
                $foundInCart = false;
                $cart = collect();

                foreach ($request->session()->get('cart') as $key => $cartItem) {
                    if ($cartItem['id'] == $product->id) {
                        if ($cartItem['variant'] == $str) {
                            $foundInCart = true;
                            $cartItem['quantity'] += $request['quantity'];
                        }
                    }
                    $cart->push($cartItem);
                }

                if (!$foundInCart) {
                    $cart->push($data);
                }

                $request->session()->put('cart', $cart);
            } else {
                $cart = collect([$data]);
                $request->session()->put('cart', $cart);
            }
        }
    }

    //removes from Cart
    public function removeFromCart(Request $request)
    {
        if ($request->session()->has('cart')) {
            $cart = $request->session()->get('cart', collect([]));
            $cart->forget($request->key);
            $request->session()->put('cart', $cart);
        }

        return view('frontend.partials.cart_details');
    }

    //updated the quantity for a cart item
    public function updateQuantity(Request $request)
    {
        $cart = $request->session()->get('cart', collect([]));
        $cart = $cart->map(function ($object, $key) use ($request) {
            if ($key == $request->key) {
                $object['quantity'] = $request->quantity;
            }
            return $object;
        });
        $request->session()->put('cart', $cart);

        return view('frontend.partials.cart_details');
    }
}
