@extends('myTemplate.master')

@section('title', 'Corona-info')

@section('content')
    <div class="main-content container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-md-12 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class='breadcrumb-header'>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{'homepage'}}">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Add News</li>
                        </ol>
                    </nav>
                </div>
            </div>

        </div>
        <!-- Basic Horizontal form layout section start -->
        <section id="basic-horizontal-layouts">
            <div class="row match-height">
                <div class="col-md-12 col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Add News</h4>
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <form class="form form-horizontal" action="{{route("news.store")}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                     <div class="form-body">
                                        <div class="row">

                                            <div class="col-md-6 form-group">
                                                <label>Title</label>
                                                <input type="text" class="form-control" name="title" required>
                                            </div>
                                            
                                            <div class="col-md-6 form-group">
                                                <label>News Image</label>
                                                <input type="file" id="first-name" class="form-control" name="image" required>
                                            </div>

                                            <div class="col-md-12 form-group">
                                                <label>Content</label>
                                                <textarea id="mytextarea" name="content"></textarea>
                                            </div>
                                          

                                            <div class="col-sm-12 d-flex justify-content-start">
                                                <button type="submit" class="btn btn-primary mr-1 mb-1">Submit</button>

                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- // Basic Horizontal form layout section end -->

        <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

        <script>
            tinymce.init({
              selector: 'textarea#mytextarea'
            });
            
        </script>



    </div>

    

    

@endsection
