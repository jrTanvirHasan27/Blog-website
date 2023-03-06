<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    public function commentPost(Request $req, $blog_id)
    {
        $user = Auth::user();
        $comment = new Comment();
        $comment->cmnt = $req->comment;
        $comment->cmntPoster_id = $user->id;
        $comment->blogpost_id = $blog_id;

        $comment->save();

        return redirect()->back();
    }
}
