<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use Illuminate\Support\Str;

class NewsController extends Controller
{
    public function create(){
        return view('admin.news.create');
    }

    public function store(Request $request){
        if ($request->hasFile('image')) {
            if ($request->file('image')->isValid()) {
                $file                   = $request->file('image');
                $thumbNameTmp           = md5_file($file->getRealPath());
                $extension              = $file->getClientOriginalExtension();
                $filename               = 'image-'.$thumbNameTmp.'_'.time().'.'.$extension;
                $path                   = 'uploads/news/';
                $url                    = $file->move($path, $filename);
                News::create([
                    'title' => $request->title,
                    'slug' => Str::kebab($request->title),
                    'image' => $path.''.$filename,
                    'content' => $request->content,

                ]);
                return redirect()->route('news.index')->with('message', 'Successfully created news');
            }
        } else {
            News::create([
                'title' => $request->title,
                'slug' => Str::kebab($request->title),
                'content' => $request->content,

            ]);
            return redirect()->route('news.index')->with('message', 'Successfully created news');
        }
    }

    public function index(){
        $news = News::all();

        return view('admin.news.index', compact('news'));
    }

    public function update(Request $request, $id){
        $updateData = News::findorfail($id);
        if ($request->hasFile('image')) {
            if ($request->file('image')->isValid()) {
                $file                   = $request->file('image');
                $thumbNameTmp           = md5_file($file->getRealPath());
                $extension              = $file->getClientOriginalExtension();
                $filename               = 'image-'.$thumbNameTmp.'_'.time().'.'.$extension;
                $path                   = 'uploads/news/';
                $url                    = $file->move($path, $filename); 

                $updateData->update([
                    'title' => $request->title,
                    'slug' => Str::kebab($request->title),
                    'image' => $path.''.$filename,
                    'content' => $request->content,

                ]);
                $update_confirm_msg = 1;
                return redirect()->route('news.index')->with('message', 'Successfully updated news');
            }
        } else {
            $updateData->update($request->all());
            $update_confirm_msg = 1;
            return redirect()->route('news.index')->with('message', 'Successfully updated news');
        }
    }

    public function destroy($id){
        $news = News::find($id);
        $news->delete();

        return redirect()->route('news.index')->with('message', 'Successfully created news');
    }


    public function frontendNews(){
        $latestNews = News::orderBy('id', 'desc')->paginate(15);

        return view('frontend.News.news', compact('latestNews'));
    }

    public function frontendSingleNews($slug){
        $news  = News::where('slug', $slug)->first();

        return view('frontend.News.singleNews', compact('news'));
    }
}
