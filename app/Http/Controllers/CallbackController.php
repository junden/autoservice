<?php
/**
 * Created by PhpStorm.
 * User: max
 * Date: 11/15/17
 * Time: 1:23 PM
 */

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CallbackController extends Controller
{
    //Get messages
    public function send(Request $request)
    {
        $message = new Message();
        $message->name = request('name');
        $message->phone = request('phone');
        $message->email = request('email');
        $message->message =request('message');
        $message->country =request('country');
        $message->gender = request('gender');
        $message->dummy = request('dummy');

        $message->save();
        return redirect('/contact');


    }
}