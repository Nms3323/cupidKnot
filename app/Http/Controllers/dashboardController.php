<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;

class dashboardController extends Controller
{
    public function dashboard()
    {
        $user = Auth::user();
        if($user->role == 1){
            $data = User::where('role',0)->get();
            return view("admin.dashboard", compact("data"));
        }else{
            $data = User::whereHas('PartnerPreference', function($query) use ($user){
                $query->where('manglik_type',$user->manglik);
                $query->where('min_income','>=',$user->annual_income);
                $query->where('max_income','<=',$user->annual_income);
            })
            ->whereHas('PartnerOccupation', function($query) use ($user){
                $query->where('occupation_type',$user->occupation);
            })
            ->whereHas('PartnerFamily', function($query) use ($user){
                $query->where('family_type',$user->family_type);
            })
            ->where('role',0)
            ->where('id',"!=",$user->id)
            ->get();
            
            return view("dashboard", compact("data"));
        }
    }
}
