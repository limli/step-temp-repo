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
          <h3>
            Username: <span id="username"></span>
          </h3>
          <h6 class="text-secondary">
            Name: <span id="name"></span>
          </h6>
          <h6 class="text-secondary">
            Email: <span id="email"></span>
          </65>
          <div>
            Bio: <span id="bio"></span>
          </div>
        </div>
      </div>
      <nav>
        <div class="nav nav-tabs mb-2" id="nav-tab" role="tablist">
          <a class="nav-item nav-link active" id="nav-deals-tab" data-toggle="tab" href="#deals" role="tab" aria-controls="deals" aria-selected="true">Deals</a>
          <a class="nav-item nav-link" id="nav-followers-tab" data-toggle="tab" href="#followers" role="tab" aria-controls="followers" aria-selected="false">Followers</a>
          <a class="nav-item nav-link" id="nav-following-tab" data-toggle="tab" href="#following" role="tab" aria-controls="following" aria-selected="false">Following</a>
        </div>
      </nav>
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="deals" role="tabpanel" aria-labelledby="nav-deals-tab"></div>
        <div class="tab-pane fade" id="followers" role="tabpanel" aria-labelledby="nav-followers-tab"></div>
        <div class="tab-pane fade" id="following" role="tabpanel" aria-labelledby="nav-following-tab"></div>
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
