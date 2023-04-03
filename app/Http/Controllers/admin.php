<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class admin extends Controller
{
    function index(Request $res)
    {
        if($res->login)
        {
            $email = $res->email;
            $password = $res->password;

            $login = DB::table('admin')->where('email',$email)->where('password',$password);

            if($login->count()==1)
            {
                $admin = $login->first();
                session(['admin_id' => $admin->id]);
                return redirect('dashboard');
            }

        }
        return view('admin_login');
    }

    function dashboard(Request $res)
    {

        $user = DB::table('register')->get();
        $cnt_user = $user->count();

        $post = DB::table('post')->get();
        $cnt_post = $post->count();

        $records = DB::table('register')->select(DB::raw('*'))
                  ->whereRaw('Date(today_date) = CURDATE()')->get();
        $records = $records->count();

        $user_data['user_info'] = $user;

        $insta_data = array('total_user' =>$cnt_user,'post'=>$cnt_post,'register'=>$records);
       
        return view('dashboard',$insta_data,$user_data);
    }

     function total_post(Request $res)
    {
          $post_data = DB::table('post')->orderBy('post.post_id', 'desc')->join('register', 'post.user_id', '=', 'register.id')->select('post.*', 'register.*')->get();
           $select_user_arry['user_post'] = $post_data;
       
        return view('total_post',$select_user_arry);
    }
}
