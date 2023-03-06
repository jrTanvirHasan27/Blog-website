<?php

namespace App\Http\Controllers\Backend;

use App\Models\Blogpost;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class BlogpostController extends Controller
{
    public function addPostPage()
    {
        $categories = Category::all();
        return view('Backend.BlogPost.addpost', ['categories' => $categories]);
    }
    public function addPost(Request $req)
    {
        $user = Auth::user();
        $req->validate([
            'blog_title' => 'required | max:100 | min:2',
            'blog_desc' => 'required | min:100',
            'blog_image' => 'image:jpg,png,jpeg'
        ]);

        $post = new Blogpost();
        $post->blog_title = $req->blog_title;
        $post->blog_desc = $req->blog_desc;
        $post->category_id = $req->category_id;
        $post->poster_id = $user->id;

        $image = $req->blog_image;
        $folder = 'blogpost-image';
        if($image)
        {
            $imageName = time() . $image->getClientOriginalName();
            $image->move($folder, $imageName);
            $post->blog_image = $imageName;
        }

        $post->save();
        return redirect()->back()->with('msg', "Blogpost has been created successfully!");
    }
    public function managePostPage()
    {
        $blogpost = Blogpost::all();
        $category = Category::all();
        return view('Backend.BlogPost.managepost', ['blogpost' => $blogpost, 'categories' => $category]);
    }
    public function deletePost($blog_id)
    {
        $blog_post = Blogpost::find($blog_id);
        $imagename = $blog_post->blog_image;
        $path = 'blogpost-image/'.$imagename;
        File::delete($path);
        $blog_post->delete();

        return redirect()->back()->with('msg', "The blogpost has been deleted successfully!");
    }
    public function blogEditPage($blog_id)
    {
        $blogpost = Blogpost::find($blog_id);
        $categories = Category::all();
        return view('Backend.BlogPost.updateblogpost', ['blogpost' => $blogpost, 'categories' => $categories]);
    }
    public function updateBlogpost(Request $req, $blog_id)
    {
        //$user = Auth::user();
        $req->validate([
            'blog_title' => 'required | max:100 | min:2',
            'blog_desc' => 'required | min:100',
            'blog_image' => 'image:jpg,png,jpeg'
        ]);

        $post = Blogpost::find($blog_id);
        $post->blog_title = $req->blog_title;
        $post->blog_desc = $req->blog_desc;
        $post->category_id = $req->category_id;
        //$post->poster_id = $user->id;

        $image = $req->blog_image;
        $folder = 'blogpost-image';
        if($image)
        {
            $imagename = $post->blog_image;
            $path = 'blogpost-image/'.$imagename;
            File::delete($path);

            $imageName = time() . $image->getClientOriginalName();
            $image->move($folder, $imageName);
            $post->blog_image = $imageName;
        }

        $post->save();
        return redirect()->route('post.manage')->with('msg', "Blogpost has been updated successfully!");
    }
}
