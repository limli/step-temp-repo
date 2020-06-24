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
      <div class="row">
        <div class="col-sm-4 col-lg-3">
          <img id="profile-photo" class="img-fluid mb-4" alt="profile-photo"/>
          <button id="follow-btn" type="button" class="btn btn-primary">Follow</button>
        </div>
        <div class="col-sm-8 col-lg-9">
          <div>
            Name: 
            <span id="name"></span>
          </div>
          <div>
            Username: 
            <span id="username"></span>
          </div>
          <div>
            Email: 
            <span id="email"></span>
          </div>
          <div>
            Bio:
            <span id="bio"></span>
          </div>
        </div>
      </div>
      <div id="followers"></div>
      <div id="following"></div>
      <div id="deals" class="card-columns"></div>
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
