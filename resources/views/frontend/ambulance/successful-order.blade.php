@extends('layouts.main')

@section('header-style')
  
@endsection

@section('content')


<!-- Contact -->
<div class="contact-area pt-100 pb-70">
  <div class="contact-shape">
      <img src="assets/img/contact-shape.png" alt="Shape">
  </div>
  <div class="container">
      <div class="row align-items-center">
        @if (session()->has('message'))
            <div class="col-12">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Message !</strong> {{ session()->get('message') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        @endif

          <div class="col-lg-12">
              <div class="section-title">
                  <h2>Order List</h2>
              </div>
              <div class="order-lists">
                <table class='table table-striped' id="table1">
                    <thead>
                        <tr>
                            <th>Rent Id</th>
                            <th>Ambulance</th>
                            <th>Driver</th>
                            <th>Driver Phone</th>
                            <th>Vehicle Number</th>
                            <th>District</th>
                            <th>Area</th>
                            <th>Rent Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $id = 1; ?>
                        @foreach ($orders as $rent)
                            <tr>
                                <td>{{ $id++ }}</td>
                                <td>{{ $rent->ambulance->name }}</td>
                                <td>{{ $rent->ambulance->driver_name }}</td>
                                <td>{{ $rent->ambulance->driver_phone }}</td>
                                <td>{{ $rent->ambulance->vehicle_number }}</td>
                                <td>{{ $rent->district }}</td>
                                <td>{{ $rent->area }}</td>
                                <td>{{ $rent->created_at }}</td>
                            </tr>
                        @endforeach

                    </tbody>
                </table>
              </div>
              {{$orders->links()}}
          </div>

      </div>
  </div>
</div>
<!-- End Contact -->




@endsection
