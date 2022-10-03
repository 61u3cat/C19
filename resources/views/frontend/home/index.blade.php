@extends('layouts.main')

@section('header-style')
  <style>
    .projects-item {
      height: 230px;
    }
    .projects-item img{
      height: 100%;
    }
    .information-service h2 {
        color: #022E6B !important;
    }
    .information-service p {
        color: #444 !important;
    }
  </style>
@endsection

@section('content')
  <!-- Banner -->
<div class="banner-area">
    <div class="banner-slider owl-theme owl-carousel">
      @foreach ($info_services as $item)
        <div class="overlay-banner">
            <div class="banner-item banner-bg-one"  style="background: url({{ asset($item->icon_image) }}); background-repeat: no-repeat; background-size: cover; background-position: center center ">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="banner-content">
                                <h1>{{$item->service_name}}</h1>
                                <p>{{$item->short_desc}}</p>
                                <a class="common-btn" href="{{url('info_service/'.$item->slug)}}">
                                    Read More...
                                    <span></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      @endforeach

    </div>
</div>
<!-- End Banner -->

<!-- Logo -->
<div class="logo-area">
    <div class="container">
        <div class="row align-items-center">

            <div class="col-lg-3">
                <div class="logo-text">
                    <h3>Latest News</h3>
                </div>
            </div>

            <div class="col-lg-9">
                <div class="logo-slider owl-theme owl-carousel">
                  @foreach ($latestNews as $news)
                    <div class="logo-item text-left">
                      <h5><a href="{{url('/news/'.$news->slug)}}" class="text-dark">{{$news->title}}</a></h5>
                    </div>
                  @endforeach

                </div>
            </div>

        </div>
    </div>
</div>
<!-- End Logo -->

<!-- Counter -->
<div class="counter-area pt-100 pb-70">
  <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-12 text-center">
          <h2>Today's Bangladesh Corona Update</h2>
        </div>

          <div class="col-sm-6 col-lg-4 card-overlay">
            <div class="counter-item">
              <h3>
                @if ($filtered)
                  <span class="odometer" data-count="{{$filtered['NewConfirmed']}}">{{$filtered['NewConfirmed']}}</span>
                @else
                  <span class="odometer" data-count="00">00</span>
                @endif
              </h3>
              <p>New Confirmed</p>

              <h3>
                @if ($filtered)
                  <span class="odometer" data-count="{{$filtered['TotalConfirmed']}}">{{$filtered['NewConfirmed']}}</span>
                @else
                  <span class="odometer" data-count="00">00</span>
                @endif
              </h3>
              <p>Total Confirmed</p>

            </div>
          </div>

          <div class="col-sm-6 col-lg-4 card-overlay">
            <div class="counter-item">
              <h3>
                @if ($filtered)
                  <span class="odometer" data-count="{{$filtered['NewDeaths']}}">{{$filtered['NewDeaths']}}</span>
                @else
                  <span class="odometer" data-count="00">00</span>
                @endif
              </h3>
              <p>New Death</p>

              <h3>
                @if ($filtered)
                  <span class="odometer" data-count="{{$filtered['TotalDeaths']}}">{{$filtered['TotalDeaths']}}</span>
                @else
                  <span class="odometer" data-count="00">00</span>
                @endif
              </h3>
              <p>Total Deaths</p>

            </div>
          </div>
          <div class="col-sm-6 col-lg-4 card-overlay">
            <div class="counter-item">
              <h3>
                @if ($filtered)
                  <span class="odometer" data-count="{{$filtered['NewRecovered']}}">{{$filtered['NewRecovered']}}</span>
                @else
                  <span class="odometer" data-count="00">00</span>
                @endif
              </h3>
              <p>New Recovered</p>

              <h3>
                @if ($filtered)
                  <span class="odometer" data-count="{{$filtered['TotalRecovered']}}">{{$filtered['TotalRecovered']}}</span>
                @else
                  <span class="odometer" data-count="00">00</span>
                @endif
              </h3>
              <p>Total Recovered</p>

            </div>
          </div>
          <a class="common-btn" href="{{url('info_corona_update_history',['id'=>"bangladesh"])}}">
              View History
              <span></span>
          </a>

      </div>
  </div>
</div>
<!-- End Counter -->

  <div class="counter-area pt-100 pb-70">
      <div class="container">
          <div class="row justify-content-center">
              <div class="col-md-12 text-center">
                  <h2>Today's Worldwide Corona Update </h2>
              </div>

              <div class="col-sm-6 col-lg-4 card-overlay">
                  <div class="counter-item">
                      <h3>
                          @if ($global)
                              <span class="odometer" data-count="{{$global['NewConfirmed']}}">{{$global['NewConfirmed']}}</span>
                          @else
                              <span class="odometer" data-count="00">00</span>
                          @endif
                      </h3>
                      <p>New Confirmed</p>

                      <h3>
                          @if ($global)
                              <span class="odometer" data-count="{{$global['TotalConfirmed']}}">{{$global['TotalConfirmed']}}</span>
                          @else
                              <span class="odometer" data-count="00">00</span>
                          @endif
                      </h3>
                      <p>Total Confirmed</p>

                  </div>
              </div>

              <div class="col-sm-6 col-lg-4 card-overlay">
                  <div class="counter-item">
                      <h3>
                          @if ($global)
                              <span class="odometer" data-count="{{$global['NewDeaths']}}">{{$global['NewDeaths']}}</span>
                          @else
                              <span class="odometer" data-count="00">00</span>
                          @endif
                      </h3>
                      <p>New Death</p>

                      <h3>
                          @if ($global)
                              <span class="odometer" data-count="{{$global['TotalDeaths']}}">{{$global['TotalDeaths']}}</span>
                          @else
                              <span class="odometer" data-count="00">00</span>
                          @endif
                      </h3>
                      <p>Total Death</p>

                  </div>
              </div>
              <div class="col-sm-6 col-lg-4 card-overlay">
                  <div class="counter-item">
                      <h3>
                          @if ($global)
                              <span class="odometer" data-count="{{$global['NewRecovered']}}">{{$global['NewRecovered']}}</span>
                          @else
                              <span class="odometer" data-count="00">00</span>
                          @endif
                      </h3>
                      <p>New Recovered</p>

                      <h3>
                          @if ($global)
                              <span class="odometer" data-count="{{$global['TotalRecovered']}}">{{$global['TotalRecovered']}}</span>
                          @else
                              <span class="odometer" data-count="00">00</span>
                          @endif
                      </h3>
                      <p>Total Recovered</p>

                  </div>
              </div>
              <a class="common-btn" href="{{url('info_corona_update_history',['id'=>"global"])}}">
                  View History
                  <span></span>
              </a>

          </div>
      </div>
  </div>
  <!-- End Counter -->
<!-- Work -->
<section class="information-service work-area ptb-100">
  <div class="container">

      <div class="section-title">
          <div class="row align-items-center">
              <div class="col-lg-6">
                  <h2>Service And Information</h2>
              </div>
          </div>
      </div>


      <div class="row">
      @foreach ($info_services as $item)

        <div class="col-lg-6 mb-4">
          <div class="work-item">
          <a href="{{url('info-service/'.$item->slug)}}">
            <ul class="align-items-center">
                <li>
                    <i class="flaticon-medal-of-award"></i>
                </li>
                <li>
                    <h3>{{$item->service_name}}</h3>
                    <p>{{$item->short_desc}}</p>
                </li>
            </ul>
            </a>

          </div>
        </div>

      @endforeach
      </div>

  </div>
</section>
<!-- End Work -->

<!-- Projects -->
<section class="projects-area section-overlay pt-100 pb-70">
  <div class="container">

      <div class="section-title">
          <div class="row align-items-center">
              <div class="col-lg-6">
                  <span class="sub-title">Videos</span>
                  <h2>Some Of Our <span>Videos</span></h2>
              </div>
          </div>
      </div>

      <div class="row">
        @foreach ($video_Data as $video)
          <div class="col-sm-6 col-lg-4">
            <div class="projects-item card-overlay">
              <img src=" {{asset($video->video_thumbnail)}} " alt="Projects">
              <div class="inner">
                <h3>
                  <a href=" {{$video->video_link}} " target="_blank"> {{$video->video_details}} </a>
                </h3>
              </div>
            </div>
          </div>
        @endforeach


      </div>

  </div>
</section>
<!-- End Projects -->


<!-- Services -->
<section class="services-area pt-100 pb-70">
    <div class="container">

        <div class="section-title">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <span class="sub-title">Our Services</span>
                    <h2>The <span>Services</span> That We Provide</h2>
                </div>
            </div>
        </div>

        <div class="row">
          @foreach ($services as $service)
            <div class="col-sm-6 col-lg-4">
                <div class="services-item card-overlay @if($loop->index % 2 == 0) active @endif">
                    <i class="flaticon-marketing-strategy"></i>
                    <h3>
                        <a href="#">{{$service->service_name}}</a>
                    </h3>
                    <p>{{$service->title}}</p>
                    <a class="services-btn" href="{{url('/service/'.$service->slug)}}">Read More</a>
                </div>
            </div>
          @endforeach


        </div>

    </div>
</section>
<!-- End Services -->







@endsection
