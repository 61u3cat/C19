@extends('layouts.main')

@section('content')


    <!-- Blog Details -->
    <div class="blog-details-area ptb-100">
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <div class="details-item">
                        <h2 class="text-center" style="padding-top: 70px; ">{{ $type }} Previous Corona Record</h2>
                        <table class="table table-bordered">
                            <tr>
                                <th>Date</th>
                                <th>New Affected</th>
                                <th>Total Affected</th>
                                <th>New Deaths</th>
                                <th>Total Deaths</th>
                                <th>New Recovered</th>
                                <th>Total Recovered</th>
                            </tr>
                            @foreach($data as $key)
                            <tr>
                                <td>{{ $key->created_at->format('Y-m-d') }}</td>
                                <td>{{ $key->NewConfirmed }}</td>
                                <td>{{ $key->TotalConfirmed }}</td>
                                <td>{{ $key->NewDeaths }}</td>
                                <td>{{ $key->TotalDeaths }}</td>
                                <td>{{ $key->NewRecovered }}</td>
                                <td>{{ $key->TotalRecovered }}</td>
                            </tr>
                            @endforeach
                        </table>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- End Blog Details -->

@endsection
