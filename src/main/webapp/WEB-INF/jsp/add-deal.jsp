<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Add Deal</title>
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
    type="text/css" />
  <!-- Tags Input CSS -->
  <link href="tagsinput/tagsinput.css" rel="stylesheet" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />
</head>

<body id="page-top">
  <%@include file="/WEB-INF/components/header.html"%>
  <div class="container">
    <section class="page-section">
      <h2 class="page-section-heading text-center text-secondary mb-4">Submit A Deal</h2>
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <form id="contactForm" name="dealform" novalidate="novalidate">

            <div class="form-group">
              <label for="img-input">Choose Image</label>
              <input type="file" class="form-control-file" id="img-input" required>
            </div>
            <img style="display: none;" id="img-preview" class="mw-100 my-4" src="#" alt="your image"/>

            <div class="form-group">
              <label for="description-input">Description</label>
              <input type="text" class="form-control" id="description-input" required>
            </div>

            <div class="form-group">
              <label for="source-input">Source</label>
              <input type="text" class="form-control" id="source-input">
            </div>

            <div class="form-group">
              <label>Valid Date</label>
              <div class="d-flex align-items-center">
                <label class="mb-0 mr-1" for="from-date">From</label>
                <input class="mr-1" type="date" id="from-date">
                <label class="mb-0 mr-1" for="to-date">To</label>
                <input class="mr-1" type="date" id="to-date">
              </div>
            </div>

            <div class="form-group">
              <label for="restaurant-input">Restaurant</label>
              <input type="text" placeholder="Search for a restaurant..." class="form-control" id="restaurant-input">
              <div class="search-menu-container">
                <div id="restaurant-search-results" class="search-menu">
                  helloworld
                </div>
              </div>
              <div id="restaurant-selected">
                No Restaurant Selected. 
              </div>
            </div>

            <div class="form-group">
              <label>Tags</label>
              <input type="text" data-role="tagsinput">
            </div>

            <div class="form-group d-flex flex-row-reverse">
              <button class="btn btn-primary" id="sendMessageButton"
                type="submit">Submit Deal
              </button>
            </div>
          </form>
        </div>
      </div>
    </section>
  </div>
  </div>
  <%@include file="/WEB-INF/components/footer.html"%>
  <!-- Bootstrap core JS-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
  <!-- Third party plugin JS-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
  <script src="tagsinput/tagsinput.js"></script>
  <!-- Core theme JS-->
  <script src="js/scripts.js"></script>
  <!-- Page JS -->
  <script src="js/add-deal.js"></script>
</body>

</html>
