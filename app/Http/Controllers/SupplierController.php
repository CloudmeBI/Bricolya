<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;

class SupplierController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $sort_search = null;

        $suppliers = User::where('user_type','=','supplier')->orderBy('created_at', 'desc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $user_ids = User::where('user_type', 'seller')->where(function($user) use ($sort_search){
                $user->where('name', 'like', '%'.$sort_search.'%')->orWhere('email', 'like', '%'.$sort_search.'%');
            })->pluck('id')->toArray();
            $suppliers = $suppliers->where(function($supplier) use ($user_ids){
                $supplier->whereIn('user_id', $user_ids);
            });
        }

        $suppliers = $suppliers->paginate(15);

        return view('suppliers.index', compact('suppliers','sort_search'));
    }

    public function show(User $supplier)
    {
        return view('suppliers.show', compact('supplier'));
    }

}
