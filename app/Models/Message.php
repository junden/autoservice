<?php
/**
 * Created by PhpStorm.
 * User: max
 * Date: 11/15/17
 * Time: 2:37 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    protected $fillable = [
        'id', 'name','email','phone', 'message', 'country', 'gender', 'dummy',
    ];
}