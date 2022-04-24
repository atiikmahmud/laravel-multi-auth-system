<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Multi Stap Form</title>

    <style>
        .card-body{
            height: 515px;
        }
    </style>
  </head>
  <body>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="card mt-5">
                        <div class="card-header text-white bg-info">
                            <h5 class="text-center"><strong>Multi Step Form</strong></h5>
                        </div>
                        <div class="card-body">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                  <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Basic</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                  <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Educational</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                  <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Contact</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="final-tab" data-bs-toggle="tab" data-bs-target="#final" type="button" role="tab" aria-controls="final" aria-selected="false">Submission</button>
                                </li>
                            </ul>
                            
                            <form action="">
                                <div class="tab-content" id="myTabContent">                                  
                                    <!-- Basic Information -->
                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="form-field m-2">
                                            <div class="mb-3">
                                                <label for="firstname" class="form-label">First Name</label>
                                                <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter your first name" required>
                                            </div>
    
                                            <div class="mb-3">
                                                <label for="lastname" class="form-label">Last Name</label>
                                                <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Enter your last name" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="fathername" class="form-label">Father's Name</label>
                                                <input type="text" class="form-control" id="fathername" name="fathername" placeholder="Enter your father's name" required>
                                            </div>
    
                                            <div class="mb-3">
                                                <label for="mothername" class="form-label">Mother's Name</label>
                                                <input type="text" class="form-control" id="mothername" name="mothername" placeholder="Enter your mother's name" required>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Educational Information -->
                                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="form-field m-2">
                                            <div class="mb-3">
                                                <label for="lastedu" class="form-label">Last Educational Stage</label>
                                                <input type="text" class="form-control" id="lastedu" name="lastedu" placeholder="Enter your educational stage" required>
                                            </div>
    
                                            <div class="mb-3">
                                                <label for="lastedu-result" class="form-label">Result</label>
                                                <input type="text" class="form-control" id="lastedu-result" name="result" placeholder="Enter your result" required>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Contacts Information -->
                                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                        <div class="form-field m-2">
                                            <div class="mb-3">
                                                <label for="email" class="form-label">Email Adress</label>
                                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email adreess" required>
                                            </div>
    
                                            <div class="mb-3">
                                                <label for="phone" class="form-label">Phone Number</label>
                                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="district" class="form-label">District</label>
                                                <input type="text" class="form-control" id="district" name="district" placeholder="Enter your district name" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="division" class="form-label">Division</label>
                                                <input type="text" class="form-control" id="division" name="division" placeholder="Enter your division name" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="country" class="form-label">Country</label>
                                                <input type="text" class="form-control" id="country" name="country" placeholder="Enter your country name" required>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Sunmission -->
                                    <div class="tab-pane fade" id="final" role="tabpanel" aria-labelledby="final-tab">
                                        <div class="form-field m-2">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" required>
                                                <label class="form-check-label" for="flexCheckDefault">
                                                  Agree with form submission
                                                </label>
                                              </div>
    
                                            <div class="mt-3">
                                                <button class="btn btn-primary" type="submit" >Submit</button>
                                            </div>
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

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>
