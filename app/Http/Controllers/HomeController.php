<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Session;
use Auth;
use Hash;
use App\Category;
use App\FlashDeal;
use App\Brand;
use App\SubCategory;
use App\SubSubCategory;
use App\Product;
use App\PickupPoint;
use App\CustomerPackage;
use App\CustomerProduct;
use App\User;
use App\Seller;
use App\Shop;
use App\Color;
use App\Order;
use App\BusinessSetting;
use App\Http\Controllers\SearchController;
use ImageOptimizer;
use Cookie;
use DB;
use PDF;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;
use App\Mail\RecruitmentMail;
use App\Mail\WelcomeMail;
use App\Mail\WelcomeMailForAdmin;

class HomeController extends Controller
{
    public function login()
    {
        if(Auth::check()){
            return redirect()->route('home');
        }
        return view('frontend.user_login');
    }

    public function supplierLogin()
    {

        if(Auth::check()){
            return redirect()->route('home');
        }
        return view('frontend.supplier_login');
    }

    public function loginSupplier(Request $request)
    {
        $user = User::where('user_type', '=','supplier')->where('email', $request->email)->first();

        if($user != null){
            if(Hash::check($request->password, $user->password)){
                if($request->has('remember')){
                    auth()->login($user, true);

                }
                else{
                    auth()->login($user, false);
                }

                return redirect()->route('dashboard');
            }
        }

        return back();
    }

    public function supplierRegisterGet(){
        return view('frontend.supplier_register');
    }

    public function supplierRegister(Request $request)
    {

        $validator = $this->validate($request,[
            'user_type' => '',
            'first_name' => 'required',
            'website' => '',
            'city' => '',
            'category_Specialty' => '',
            'products_sold' => '',
            'activity_descrition' => '',
            'email' => 'required|unique:users,email',
            'address' => '',
            'phone' => '',
            'password' => 'required',
        ],[]);

        $user = new User();
        $user->user_type = 'supplier';
        $user->name = $request->last_name . ' ' . $request->first_name;
        $user->website = $request->website;
        $user->city = $request->city;
        $user->category_Specialty = $request->category_Specialty;
        $user->products_sold = $request->products_sold;
        $user->activity_descrition = $request->activity_descrition;
        $user->email = $request->email;
        $user->address = $request->address;
        $user->phone = $request->telephone;
        $user->password = bcrypt($request->password);
        $user->email_verified_at = Carbon::now();
//        $user->email_verified_at = Carbon::now();


        if( $request->hasFile('document') ) {
            $data['filepath'] = $request->file('document')->store('storage/documents');
            $user->catalogue = $data['filepath'];
        }

        $user->save();

        Mail::to($request->email)->send(new WelcomeMail($user));
        // Mail::to(env('MAIL_FROM_ADDRESS'))->send(new WelcomeMailForAdmin($user));

        $session = session()->flash('success','Inscription reussie');
        return redirect()->route('supplier.login.get')->with($session);
    }

    public function resellerLogin()
    {
        if(Auth::check()){
            return redirect()->route('home');
        }
        return view('frontend.reseller_login');
    }

    public function registration(Request $request)
    {
        if(Auth::check()){
            return redirect()->route('home');
        }
        if($request->has('referral_code')){
            Cookie::queue('referral_code', $request->referral_code, 43200);
        }
        return view('frontend.user_registration');
    }

    public function reseller_register_get()
    {
        return view('frontend.reseller_register');
    }
     public function reseller_login(Request $request)
     {
         $user = User::where('user_type', '=','seller')->where('email', $request->email)->first();

         if($user){
             if(Hash::check($request->password, $user->password)){

                 if($request->has('remember')){
                     auth()->login($user, true);
                 }
                 else{
                     auth()->login($user, false);
                 }
                 return redirect()->route('dashboard');
             }
         }
         return back();
     }

    public function reseller_register(Request $request)
    {

        $validator = $this->validate($request,[
            'user_type' => '',
            'first_name' => 'required',
            'website' => '',
            'city' => '',
            'category_Specialty' => '',
            'products_sold' => '',
            'activity_descrition' => '',
            'email' => 'required|unique:users,email',
            'address' => '',
            'phone' => '',
            'password' => 'required',
        ],[]);

        $user = new User();
        $user->user_type = 'seller';
        $user->name = $request->last_name . ' ' . $request->first_name;
        $user->website = $request->website;
        $user->city = $request->city;
        $user->category_Specialty = $request->category_Specialty;
        $user->products_sold = $request->products_sold;
        $user->activity_descrition = $request->activity_descrition;
        $user->email = $request->email;
        $user->address = $request->address;
        $user->phone = $request->telephone;
        $user->password = bcrypt($request->password);
        $user->email_verified_at = Carbon::now();

        if( $request->hasFile('document') ) {
            $data['filepath'] = $request->file('document')->store('storage/documents');
            $user->catalogue = $data['filepath'];
        }

        $user->save();

        Mail::to($request->email)->send(new WelcomeMail($user));

        $session = session()->flash('success','Inscription reussie');
        return redirect()->back()->with($session);
    }
    public function cart_login(Request $request)
    {
        $user = User::whereIn('user_type', ['customer', 'seller'])->where('email', $request->email)->first();
        if($user != null){
            updateCartSetup();
            if(Hash::check($request->password, $user->password)){
                if($request->has('remember')){
                    auth()->login($user, true);
                }
                else{
                    auth()->login($user, false);
                }
            }
        }
        return back();
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the admin dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function admin_dashboard()
    {
        return view('dashboard');
    }

    /**
     * Show the customer/seller dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function dashboard()
    {
        if(Auth::user()->user_type == 'seller'){
            return view('frontend.seller.dashboard');
        }
        elseif(Auth::user()->user_type == 'customer'){
            return view('frontend.customer.dashboard');
        }
        else {
            abort(404);
        }
    }

    public function profile(Request $request)
    {
        if(Auth::user()->user_type == 'customer'){
            return view('frontend.customer.profile');
        }
        elseif(Auth::user()->user_type == 'seller'){
            return view('frontend.seller.profile');
        }
    }

    public function customer_update_profile(Request $request)
    {
        $user = Auth::user();
        $user->name = $request->name;
        $user->address = $request->address;
        $user->country = $request->country;
        $user->city = $request->city;
        $user->postal_code = $request->postal_code;
        $user->phone = $request->phone;

        if($request->new_password != null && ($request->new_password == $request->confirm_password)){
            $user->password = Hash::make($request->new_password);
        }

        if($request->hasFile('photo')){
            $user->avatar_original = $request->photo->store('uploads/users');
        }

        if($user->save()){
            flash(__('Your Profile has been updated successfully!'))->success();
            return back();
        }

        flash(__('Sorry! Something went wrong.'))->error();
        return back();
    }

    public function seller_update_profile(Request $request)
    {
        $user = Auth::user();
        $user->name = $request->name;
        $user->address = $request->address;
        $user->country = $request->country;
        $user->city = $request->city;
        $user->postal_code = $request->postal_code;
        $user->phone = $request->phone;

        if($request->new_password != null && ($request->new_password == $request->confirm_password)){
            $user->password = Hash::make($request->new_password);
        }

        if($request->hasFile('photo')){
            $user->avatar_original = $request->photo->store('uploads');
        }

        $seller = $user->seller;
        $seller->cash_on_delivery_status = $request->cash_on_delivery_status;
        $seller->bank_payment_status = $request->bank_payment_status;
        $seller->bank_name = $request->bank_name;
        $seller->bank_acc_name = $request->bank_acc_name;
        $seller->bank_acc_no = $request->bank_acc_no;
        $seller->bank_routing_no = $request->bank_routing_no;

        if($user->save() && $seller->save()){
            flash(__('Your Profile has been updated successfully!'))->success();
            return back();
        }

        flash(__('Sorry! Something went wrong.'))->error();
        return back();
    }

    /**
     * Show the application frontend home.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('frontend.index');
    }

    public function flash_deal_details($slug)
    {
        $flash_deal = FlashDeal::where('slug', $slug)->first();
        if($flash_deal != null)
            return view('frontend.flash_deal_details', compact('flash_deal'));
        else {
            abort(404);
        }
    }

    public function load_featured_section(){
        return view('frontend.partials.featured_products_section');
    }

    public function load_best_selling_section(){
        return view('frontend.partials.best_selling_section');
    }

    public function load_home_categories_section(){
        return view('frontend.partials.home_categories_section');
    }

    public function load_best_sellers_section(){
        return view('frontend.partials.best_sellers_section');
    }

    public function trackOrder(Request $request)
    {
        if($request->has('order_code')){
            $order = Order::where('code', $request->order_code)->first();
            if($order != null){
                return view('frontend.track_order', compact('order'));
            }
        }
        return view('frontend.track_order');
    }

    public function product(Request $request, $slug, $flash_deal_id = null)
    {
        $detailedProduct  = Product::where('slug', $slug)->first();
        $flashDeal  = FlashDeal::find($flash_deal_id);

        if($detailedProduct!=null && $detailedProduct->published){
            updateCartSetup();
            if($request->has('product_referral_code')){
                Cookie::queue('product_referral_code', $request->product_referral_code, 43200);
                Cookie::queue('referred_product_id', $detailedProduct->id, 43200);
            }
            if($detailedProduct->digital == 1){
                return view('frontend.digital_product_details', compact('detailedProduct','flashDeal'));
            }
            else {
                return view('frontend.product_details', compact('detailedProduct','flashDeal'));
            }
            // return view('frontend.product_details', compact('detailedProduct'));
        }
        abort(404);
    }

    public function shop($slug)
    {
        $shop  = Shop::where('slug', $slug)->first();
        if($shop!=null){
            $seller = Seller::where('user_id', $shop->user_id)->first();
            if ($seller->verification_status != 0){
                return view('frontend.seller_shop', compact('shop'));
            }
            else{
                return view('frontend.seller_shop_without_verification', compact('shop', 'seller'));
            }
        }
        abort(404);
    }

    public function filter_shop($slug, $type)
    {
        $shop  = Shop::where('slug', $slug)->first();
        if($shop!=null && $type != null){
            return view('frontend.seller_shop', compact('shop', 'type'));
        }
        abort(404);
    }

    public function listing(Request $request)
    {
        // $products = filter_products(Product::orderBy('created_at', 'desc'))->paginate(12);
        // return view('frontend.product_listing', compact('products'));
        return $this->search($request);
    }

    public function all_categories(Request $request)
    {
        $categories = Category::all();
        return view('frontend.all_category', compact('categories'));
    }

    public function all_brands(Request $request)
    {
        $categories = Category::all();
        return view('frontend.all_brand', compact('categories'));
    }

    public function show_product_upload_form(Request $request)
    {
        if(\App\Addon::where('unique_identifier', 'seller_subscription')->first() != null && \App\Addon::where('unique_identifier', 'seller_subscription')->first()->activated){
            if(Auth::user()->seller->remaining_uploads > 0){
                $categories = Category::all();
                return view('frontend.seller.product_upload', compact('categories'));
            }
            else {
                flash('Upload limit has been reached. Please upgrade your package.')->warning();
                return back();
            }
        }
        $categories = Category::all();
        return view('frontend.seller.product_upload', compact('categories'));
    }

    public function show_product_edit_form(Request $request, $id)
    {
        $categories = Category::all();
        $product = Product::find(decrypt($id));
        return view('frontend.seller.product_edit', compact('categories', 'product'));
    }

    public function seller_product_list(Request $request)
    {
        $search = null;
        $products = Product::where('user_id', Auth::user()->id)->orderBy('created_at', 'desc');
        if ($request->has('search')) {
            $search = $request->search;
            $products = $products->where('name', 'like', '%'.$search.'%');
        }
        $products = $products->paginate(10);
        return view('frontend.seller.products', compact('products', 'search'));
    }

    public function ajax_search(Request $request)
    {
        $keywords = array();
        $products = Product::where('published', 1)->where('tags', 'like', '%'.$request->search.'%')->get();
        foreach ($products as $key => $product) {
            foreach (explode(',',$product->tags) as $key => $tag) {
                if(stripos($tag, $request->search) !== false){
                    if(sizeof($keywords) > 5){
                        break;
                    }
                    else{
                        if(!in_array(strtolower($tag), $keywords)){
                            array_push($keywords, strtolower($tag));
                        }
                    }
                }
            }
        }

        $products = filter_products(Product::where('published', 1)->where('name', 'like', '%'.$request->search.'%'))->get()->take(3);

        $subsubcategories = SubSubCategory::where('name', 'like', '%'.$request->search.'%')->get()->take(3);

        $shops = Shop::whereIn('user_id', verified_sellers_id())->where('name', 'like', '%'.$request->search.'%')->get()->take(3);

        if(sizeof($keywords)>0 || sizeof($subsubcategories)>0 || sizeof($products)>0 || sizeof($shops) >0){
            return view('frontend.partials.search_content', compact('products', 'subsubcategories', 'keywords', 'shops'));
        }
        return '0';
    }

    public function search(Request $request)
    {

        $query = $request->q;
        $sort_by = $request->sort_by;
        $category_id = (Category::where('slug', $request->category)->first() != null) ? Category::where('slug', $request->category)->first()->id : null;
        $min_price = $request->min_price;
        $max_price = $request->max_price;
        $seller_id = $request->seller_id;

        $conditions = ['published' => 1];

        if($category_id != null){
            $conditions = array_merge($conditions, ['category_id' => $category_id]);
        }

        if($seller_id != null){
            $conditions = array_merge($conditions, ['user_id' => Seller::findOrFail($seller_id)->user->id]);
        }

        $products = Product::where($conditions);

        if($min_price != null && $max_price != null){
            $products = $products->where('unit_price', '>=', $min_price)->where('unit_price', '<=', $max_price);
        }

        if($query != null){
            $searchController = new SearchController;
            $searchController->store($request);
            $products = $products->where('name', 'like', '%'.$query.'%')->orWhere('tags', 'like', '%'.$query.'%');
        }

        if($sort_by != null){
            switch ($sort_by) {
                case '1':
                    $products->orderBy('created_at', 'desc');
                    break;
                case '2':
                    $products->orderBy('created_at', 'asc');
                    break;
                case '3':
                    $products->orderBy('unit_price', 'asc');
                    break;
                case '4':
                    $products->orderBy('unit_price', 'desc');
                    break;
                default:
                    // code...
                    break;
            }
        }
        $products = filter_products($products)->paginate(12)->appends(request()->query());
        return view('frontend.product_listing', compact('products', 'query', 'category_id','min_price','max_price'));
    }

    public function product_content(Request $request){
        $connector  = $request->connector;
        $selector   = $request->selector;
        $select     = $request->select;
        $type       = $request->type;
        productDescCache($connector,$selector,$select,$type);
    }

    public function home_settings(Request $request)
    {
        return view('home_settings.index');
    }

    public function top_10_settings(Request $request)
    {
        foreach (Category::all() as $key => $category) {
            if(in_array($category->id, $request->top_categories)){
                $category->top = 1;
                $category->save();
            }
            else{
                $category->top = 0;
                $category->save();
            }
        }

        foreach (Brand::all() as $key => $brand) {
            if(in_array($brand->id, $request->top_brands)){
                $brand->top = 1;
                $brand->save();
            }
            else{
                $brand->top = 0;
                $brand->save();
            }
        }

        flash(__('Top 10 categories and brands have been updated successfully'))->success();
        return redirect()->route('home_settings.index');
    }

    public function variant_price(Request $request)
    {
        $product = Product::find($request->id);
        $str = '';
        $quantity = 0;

        if($request->has('color')){
            $data['color'] = $request['color'];
            $str = Color::where('code', $request['color'])->first()->name;
        }

        if(json_decode(Product::find($request->id)->choice_options) != null){
            foreach (json_decode(Product::find($request->id)->choice_options) as $key => $choice) {
                if($str != null){
                    $str .= '-'.str_replace(' ', '', $request['attribute_id_'.$choice->attribute_id]);
                }
                else{
                    $str .= str_replace(' ', '', $request['attribute_id_'.$choice->attribute_id]);
                }
            }
        }



        if($str != null && $product->variant_product){
            $product_stock = $product->stocks->where('variant', $str)->first();
            $price = $product_stock->price;
            $quantity = $product_stock->qty;
        }
        else{
            $price = $product->unit_price;
            $quantity = $product->current_stock;
        }

        //discount calculation
        $flash_deals = \App\FlashDeal::where('status', 1)->get();
        $inFlashDeal = false;
        
        if (!$inFlashDeal) {
            if($product->discount_type == 'percent'){
                $price -= ($price*$product->discount)/100;
            }
            elseif($product->discount_type == 'amount'){
                $price -= $product->discount;
            }
        }

        if($product->tax_type == 'percent'){
            $price += ($price*$product->tax)/100;
        }
        elseif($product->tax_type == 'amount'){
            $price += $product->tax;
        }
        return array('price' => single_price($price*$request->quantity), 'quantity' => $quantity, 'digital' => $product->digital);
    }

    public function sellerpolicy(){
        return view("frontend.policies.sellerpolicy");
    }

    public function returnpolicy(){
        return view("frontend.policies.returnpolicy");
    }

    public function supportpolicy(){
        return view("frontend.policies.supportpolicy");
    }

    public function terms(){
        return view("frontend.policies.terms");
    }

    public function privacypolicy(){
        return view("frontend.policies.privacypolicy");
    }

    public function get_pick_ip_points(Request $request)
    {
        $pick_up_points = PickupPoint::all();
        return view('frontend.partials.pick_up_points', compact('pick_up_points'));
    }

    public function get_category_items(Request $request){
        $category = Category::findOrFail($request->id);
        return view('frontend.partials.category_elements', compact('category'));
    }

    public function premium_package_index()
    {
        $customer_packages = CustomerPackage::all();
        return view('frontend.customer_packages_lists', compact('customer_packages'));
    }

    public function seller_digital_product_list(Request $request)
    {
        $products = Product::where('user_id', Auth::user()->id)->where('digital', 1)->orderBy('created_at', 'desc')->paginate(10);
        return view('frontend.seller.digitalproducts.products', compact('products'));
    }
    public function show_digital_product_upload_form(Request $request)
    {
        if(\App\Addon::where('unique_identifier', 'seller_subscription')->first() != null && \App\Addon::where('unique_identifier', 'seller_subscription')->first()->activated){
            if(Auth::user()->seller->remaining_digital_uploads > 0){
                $business_settings = BusinessSetting::where('type', 'digital_product_upload')->first();
                $categories = Category::where('digital', 1)->get();
                return view('frontend.seller.digitalproducts.product_upload', compact('categories'));
            }
            else {
                flash('Upload limit has been reached. Please upgrade your package.')->warning();
                return back();
            }
        }

        $business_settings = BusinessSetting::where('type', 'digital_product_upload')->first();
        $categories = Category::where('digital', 1)->get();
        return view('frontend.seller.digitalproducts.product_upload', compact('categories'));
    }

    public function show_digital_product_edit_form(Request $request, $id)
    {
        $categories = Category::where('digital', 1)->get();
        $product = Product::find(decrypt($id));
        return view('frontend.seller.digitalproducts.product_edit', compact('categories', 'product'));
    }

    public function exportAllProducts()
    {
        $products_pdf = DB::table('products')->get();
        $pdf2 = PDF::setOptions([
            'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
            'logOutputFile' => storage_path('logs/log.htm'),
            'tempDir' => storage_path('logs/')
        ])->loadView('downloads.products', compact('products_pdf'));
        return $pdf2->download('products.pdf');
    }

    public function contact_us()
    {
        return view('frontend.contactus');
    }

    public function recruitment()
    {
        return view('frontend.recruitment.index');
    }

    public function video()
    {
        return view('frontend.videos.index');
    }

    public function all_products(Request $request)
    {
        $products = Product::paginate(12);
        $min_price = $request->min_price;
        $max_price = $request->max_price;
        return view('frontend.products.all_products',compact('products','min_price','max_price'));
    }

    public function flash_products(Request $request)
    {
        $flashdeals = FlashDeal::paginate(12);
        return view('frontend.products.flash_products_v2', compact('flashdeals'));
    }

    public function aboutus()
    {
        return view('frontend.aboutus.index');
    }

    public function send_contact_mail(Request $request)
    {
        $data = array(
            'name'      =>  $request->name,
            'message'   =>  $request->message,
            'email'     =>  $request->email,
            'subject'   =>  $request->subject
        );
        // send email
        $sendmail = Mail::to(env('MAIL_USERNAME'))->send(new SendMail($data));
        return redirect('/contact')->with('message','Your message was sent successfully! I will be in touch as soon as I can.');

//        return redirect('/contact')->with('message','Something went wrong, try refreshing and submitting the form again.');

    }


    public function send_recruitment_email(Request $request)
    {

        $data = array(
            'name'      =>  $request->name,
            'civil'     => $request->civil,
            'first_name'   =>  $request->first_name,
            'diploma'   =>  $request->diploma,
            'specialization'   =>  $request->specialization,
            'expirence'   =>  $request->expirence,
            'telephone'   =>  $request->telephone,
            'sector'   =>  $request->sector,
            'current_position'   =>  $request->current_position,
            'email'     =>  $request->email,
            'document'     =>  $request->document,
            'subject'   =>  "Recruitment Request",
        );
        // send email
        if( $request->hasFile('document') ) {
            $data['filepath'] = $request->file('document')->store('storage/recrutments');

        }

        try{
            $sendmail = Mail::to(env('MAIL_USERNAME'))->send(new RecruitmentMail($data));
            session()->flash('success','Votre demande a bien été envoyé avec succès');
            return redirect('/recruitment')->with('message','Your message was sent successfully! I will be in touch as soon as I can.');
        }catch(\Exception $e){
            session()->flash('error','Une erreur s\'est produite, essayez d\'actualiser et de soumettre à nouveau le formulaire.');
            return redirect('/recruitment')->with('message','Something went wrong, try refreshing and submitting the form again.');
        }

    }

    public function createAccount(Request $request)
    {
        $validator = $this->validate($request,[
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'password' => 'required|min:6|confirmed',
            'password_confirmation' => 'required|same:password|min:6',
            'city' => 'required',
            'address' => 'required',

        ]);

        $user = new User();
        $user->user_type = 'customer';
        $user->name = $request->name;
        $user->phone = $request->phone;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->city = $request->city;
        $user->address = $request->address;
        $user->email_verified_at = Carbon::now();

        $user->save();

        Mail::to($request->email)->send(new WelcomeMail($user));
//        Mail::to(env('MAIL_USERNAME'))->send(new WelcomeMailForAdmin($user));

        $session = session()->flash('success','Inscription reussie');
        return redirect()->back()->with($session);
    }

    public function catalogueClient()
    {
        return view('catalogue.catalogue_client');
    }
    public function catalogueClientStore(Request $request)
    {
        $path = $request->file('file')->storeAs('static_files','catalogue_client.pdf');
        $session = session()->flash('success','Le catalogue a ete modifié avec succès');
        return redirect()->back()->with($session);
    }
}
