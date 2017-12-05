<?php
/**
 * Created by PhpStorm.
 * User: max
 * Date: 11/14/17
 * Time: 6:01 PM
 */

namespace App\Http\Controllers;


use App\Models\Post;

class CatalogController extends Controller
{

    public function show($url)
    {
        $posts = Post::where('parent_id', null)->orderBy('priority','ASC')->where('published','=',1)->get();
        $content_page = Post::where('url', $url)->first();
        if ($content_page === null) {
            return view('user.404');
        }
        return view('user.content', [
            'posts' => $posts,
            'content_page' => $content_page,
        ]);

    }

    public function contact()
    {
        $posts = Post::where('parent_id', null)->orderBy('priority','ASC')->where('published','=',1)->get();
        $content_page = Post::Where('url', 'contact')->first();

        return view('user.contacts', [
            'posts' => $posts,
            'content_page' => $content_page,

        ]);
    }

    public function page()
    {
        $posts = Post::where('parent_id', null)->orderBy('priority','ASC')->where('published','=',1)->get();
        $offers=Post::where('special_offer', true)->orderBy('priority','ASC')->where('published','=',1)->get();
        $content_page = Post::where('url', '/')->first();
        $services=Post::where('services', true)->orderBy('priority','ASC')->where('published','=',1)->get();
        return view('user.main', [
                'posts' => $posts,
                'content_page' => $content_page,
                'offers'=>$offers,
                'services'=>$services,
            ]);
    }


}