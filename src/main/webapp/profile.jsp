<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Profile</title>
  <script src="js/user_profile.js"></script>
  <link href="css/deal.css" rel="stylesheet" />
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />
</head>


<body id="page-t">
  <%@include file="/WEB-INF/components/header.html"%>
  <div id="user-profile" class="page-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-sm-4 col-lg-3">
          <img id="profile-photo" class="img-fluid mb-4" alt="profile-photo"/>
          <button id="follow-btn" type="button" class="btn btn-primary">Follow</button>
        </div>
        <div class="col-sm-8 col-lg-9">
          <h3 id="username">
          </h3>
          <h6 class="text-secondary">
            Name: <span id="name"></span>
          </h6>
          <h6 class="text-secondary">
            Email: <span id="email"></span>
          </65>
          <div class="mt-2">
            Bio: <span id="bio"></span>
          </div>

          <div id="tags" class="mt-2">
          </div>
        </div>
      </div>

      <form id="profile-form" enctype="multipart/form-data">
        <div class="form-group row">
          <label for="username-input" class="col-sm-2 col-form-label">Username</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="username-input">
          </div>
        </div>
        <div class="form-group row">
          <label for="profile-photo-input" class="col-sm-2 col-form-label">Profile photo</label>

          <div id="profile-photo-input' class="custom-file col-sm-10">
            <input type="file" class="custom-file-input" id="profile-photo-file">
            <label class="custom-file-label" for="profile-photo-file">Choose file</label>
          </div>
        </div>
        <div class="form-group row">
          <label for="name-input" class="col-sm-2 col-form-label">Name</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="name-input">
          </div>
        </div>
        <div class="form-group row">
          <label for="email-input" class="col-sm-2 col-form-label">Email</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="email-input" readonly>
          </div>
        </div>
        <div class="form-group">
          <label for="bio-input" class="col-form-label">Bio</label>
          <textarea class="form-control" id="bio-input" maxlength="150"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="submit" class="btn btn-primary">Cancel</button>
      </form>
      <nav>
        <div class="nav nav-tabs mb-2" id="nav-tab" role="tablist">
          <a class="nav-item nav-link active" id="nav-deals-tab" data-toggle="tab" href="#deals" role="tab" aria-controls="deals" aria-selected="true">Deals</a>
          <a class="nav-item nav-link" id="nav-followers-tab" data-toggle="tab" href="#followers" role="tab" aria-controls="followers" aria-selected="false">Followers</a>
          <a class="nav-item nav-link" id="nav-following-tab" data-toggle="tab" href="#following" role="tab" aria-controls="following" aria-selected="false">Following</a>
          <a class="nav-item nav-link" id="nav-restaurants-tab" data-toggle="tab" href="#restaurants" role="tab" aria-controls="restaurants" aria-selected="false">Restaurants Followed</a>
        </div>
      </nav>
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="deals" role="tabpanel" aria-labelledby="nav-deals-tab"></div>
        <div class="tab-pane fade" id="followers" role="tabpanel" aria-labelledby="nav-followers-tab"></div>
        <div class="tab-pane fade" id="following" role="tabpanel" aria-labelledby="nav-following-tab"></div>
        <div class="tab-pane fade" id="restaurants" role="tabpanel" aria-labelledby="nav-restaurants-tab"></div>
      </div>
    </div>
  </div>
  <%@include file="/WEB-INF/components/footer.html"%>
  <!-- Bootstrap core JS-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
  <!-- Third party plugin JS-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
  <!-- Core theme JS-->
  <script src="js/scripts.js"></script>
</body>

</html>
