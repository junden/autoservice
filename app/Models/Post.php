<?php
/**
 * Created by PhpStorm.
 * User: max
 * Date: 11/13/17
 * Time: 3:24 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = [
        'id', 'title', 'meta_title', 'preview', 'meta_preview', 'description', 'meta_description', 'kwords', 'published', 'parent_id','url',
    ];


    public function posts()
    {
        if (\Request::get('parent_id')) {
            $this->parent_id = \Request::get('parent_id');
        } else {
            $this->parent_id = null;
        }
        $this->save();

        return Post::where('parent_id', $this->parent_id)
            ->get();

    }

    public function child_pages(){
        return Post::where('parent_id',$this->id)->get();
    }

}