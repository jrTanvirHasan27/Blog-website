<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Blogpost;
use App\Models\Category;
use App\Models\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\User;

class HomeController extends Controller
{
    public function index()
    {
        $blogs = DB::table('blogposts')->simplePaginate(4);
        $categories = Category::all();
        $items = $categories;
        $feature_post = DB::table('blogposts')->latest('id')->first();
        return view('Frontend.Home.home', ['items' => $items, 'categories' => $categories, 'blogs' => $blogs, 'feature_post' => $feature_post]);
    }

    public function readBlog($blogpost_id)
    {
        $blog = Blogpost::find($blogpost_id);
        $poster = User::find($blog->poster_id);
        $category = Category::find($blog->category_id);
        $categories = Category::all();
        $items = $categories;
        $comments = Comment::all();
        $user = User::all();
        return view('Frontend.BlogHome.readblog', ['items' => $items,'blog' => $blog, 'poster' => $poster, 'category' => $category, 'categories' => $categories, 'comments' => $comments, 'users' => $user]);
    }

    public function exploreCategory($category_id)
    {
        $blogs = DB::table('blogposts')->where('category_id', $category_id)->simplePaginate(4);
        $category = Category::find($category_id);
        $items = Category::all();
        return view('Frontend.BlogHome.categoryBasedBlogs', ['items' => $items, 'blogs' => $blogs, 'category' => $category]);
    }

    public function aboutUs()
    {
        $items = Category::all();
        return view('Frontend.AboutUs.about-us', ['items' => $items]);
    }
    public function contactUs()
    {
        $items = Category::all();
        return view('Frontend.AboutUs.contact-us', ['items' => $items]);
    }
}
