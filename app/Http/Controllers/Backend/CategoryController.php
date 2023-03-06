<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class CategoryController extends Controller
{
    public function addcategory()
    {
        return view('Backend.Category.addcategory');
    }
    public function addcategoryFinal(Request $req)
    {
        $req->validate([
            'name' => 'required | max:50 | min:2',
            'desc' => 'required | max:300 | min:15',
            'image' => 'image:jpg,png,jpeg'
        ]);

        $category = new Category();
        $category->name = $req->name;
        $category->desc = $req->desc;

        $image = $req->image;
        $folder = 'category-image';
        if($image)
        {
            $imageName = time() . $image->getClientOriginalName();
            $image->move($folder, $imageName);
            $category->image = $imageName;
        }

        $category->save();
        return redirect()->back()->with('msg', "Category has been created successfully!");
    }
    public function manageCategoryPage()
    {
        $category = Category::all();
        return view('Backend.Category.managecategory', ['category' => $category]);
    }
    public function deleteCategory($cat_id)
    {
        
        $category = Category::find($cat_id);
        $imagename = $category->image;
        $path = 'category-image/'.$imagename;
        File::delete($path);
        $category->delete();

        return redirect()->back()->with('msg', "The category has been deleted successfully!");
    }
    public function updateCategoryPage($cat_id)
    {
        $category = Category::find($cat_id);
        return view('Backend.Category.updatecategory', ['category' => $category]);
    }
    public function updateCategory(Request $req, $cat_id)
    {
        $req->validate([
            'name' => 'required | max:50 | min:2',
            'desc' => 'required | max:500 | min:15',
            'image' => 'image:jpg,png,jpeg'
        ]);

        $category = Category::find($cat_id);
        $category->name = $req->name;
        $category->desc = $req->desc;

        
        $image = $req->image;
        $folder = 'category-image';
        if($image)
        {
            $imagename = $category->image;
            $path = 'category-image/'.$imagename;
            File::delete($path);

            $imageName = time() . $image->getClientOriginalName();
            $image->move($folder, $imageName);
            $category->image = $imageName;
        }

        $category->save();
        return redirect()->back()->with('msg', "Category has been Updated successfully!");
    }
}
