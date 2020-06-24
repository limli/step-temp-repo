<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Freelancer - Start Bootstrap Theme</title>
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
    type="text/css" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />
</head>

<body id="page-top">
  <%@include file="/WEB-INF/components/header.html"%>
  <div class="container">
    <div class="row mb-5">
      <div class="col-md-8">
        <h2 class="masthead-heading mb-6" id = "deal-title">Buy 5 Free 10</h3>
        <img src="assets/deals/kfc.jpeg" id="deal-img" />
        <h5 class="text-secondary">Description: <span id="deal-info"></span></h5>
        <h5 class="text-secondary">Restaurant: <span id="restaurant-info">KFC (All outlets except Kidzania & Zoo)</span></h5>
        <h5 class="text-secondary">Validity: <span id="start-date">22 June 2020</span> to <span id="end-date">24 June 2020</span></h5>
        <h5 class="text-secondary">Posted by: <a href="/user/123">alicechen</a> </h5>
      </div>
    </div>
  </div>
  <div class= "container">
    <div class="row">
        <div class="col-sm-12">
          <form id="my-form" class="hidden" enctype="multipart/form-data" method="POST">
            <textarea style="width: 100%; max-width: 100%;" class="comment border border-info" type="text" name="comment" placeholder="Leave a comment..."></textarea>
            <input type="submit" class="btn btn-secondary float-right" />
          </form>
        </div>
    </div>
    <div class="row">
        <div class= "col-sm-12" id="comment-list"></div>
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
