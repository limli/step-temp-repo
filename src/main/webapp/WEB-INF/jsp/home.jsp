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
  <script src="../../js/home-page.js"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
    type="text/css" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />
</head>

<body id="page-top">
  <%@include file="/WEB-INF/components/header.html"%>
  <!-- Masthead-->
  <header id="header-bg-img" class="masthead text-white text-center">
    <div class="container d-flex align-items-center flex-column">
      <!-- Masthead Heading-->
      <h1 class="masthead-heading text-uppercase mb-2">Deal Finder</h1>
      <!-- Search Bar-->
      <form class="form-inline active-pink-3 active-pink-4">
        <i class="fas fa-search" aria-hidden="true"></i>
        <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search"
          aria-label="Search">
      </form>
    </div>
  </header>
  <!-- Portfolio Section-->
  <section class="page-section portfolio" id="popular-deals">
    <div class="container">
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Trending Deals</h2>
      <div class="row">
        <div class="col-md-4 mt-5">
          <div class="card deal-card h-100">
            <img class="card-img-top home-deal-img" src="assets/deals/bubble-tea.jpeg" alt="">
            <div class="card-body">
              <h4 class="card-title deal-title"></h4>
              <p class="card-text deal-text"></p>
              <p class="card-text deal-poster"></p>
              <a href="#" class="btn btn-primary float-right see-more-link">See More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4 mt-5">
          <div class="card deal-card h-100">
            <img class="card-img-top home-deal-img" src="assets/deals/dessert.jpeg" alt="">
            <div class="card-body">
              <h4 class="card-title deal-title"></h4>
              <p class="card-text deal-text"></p>
              <p class="card-text deal-poster"></p>
              <a href="#" class="btn btn-primary float-right see-more-link">See More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4 mt-5">
          <div class="card deal-card h-100">
            <img class="card-img-top home-deal-img" src="assets/deals/kfc.jpeg" alt="">
            <div class="card-body">
              <h4 class="card-title deal-title"></h4>
              <p class="card-text deal-text"></p>
              <p class="card-text deal-poster"></p>
              <a href="#" class="btn btn-primary float-right see-more-link">See More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Portfolio Modals-->
  <!-- Portfolio Modal 1-->
  <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog"
    aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"><i class="fas fa-times"></i></span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title-->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">Log Cabin
                </h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Modal - Image-->
                <img class="img-fluid rounded mb-5" src="assets/img/portfolio/cabin.png" alt="" />
                <!-- Portfolio Modal - Text-->
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque
                  assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam
                  velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.
                </p>
                <button class="btn btn-primary" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Close Window
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Portfolio Modal 2-->
  <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog"
    aria-labelledby="portfolioModal2Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"><i class="fas fa-times"></i></span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title-->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal2Label">Tasty
                  Cake</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Modal - Image-->
                <img class="img-fluid rounded mb-5" src="assets/img/portfolio/cake.png" alt="" />
                <!-- Portfolio Modal - Text-->
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque
                  assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam
                  velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.
                </p>
                <button class="btn btn-primary" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Close Window
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Portfolio Modal 3-->
  <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog"
    aria-labelledby="portfolioModal3Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"><i class="fas fa-times"></i></span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title-->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal3Label">Circus
                  Tent</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Modal - Image-->
                <img class="img-fluid rounded mb-5" src="assets/img/portfolio/circus.png" alt="" />
                <!-- Portfolio Modal - Text-->
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque
                  assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam
                  velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.
                </p>
                <button class="btn btn-primary" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Close Window
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Portfolio Modal 4-->
  <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog"
    aria-labelledby="portfolioModal4Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"><i class="fas fa-times"></i></span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title-->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal4Label">
                  Controller</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Modal - Image-->
                <img class="img-fluid rounded mb-5" src="assets/img/portfolio/game.png" alt="" />
                <!-- Portfolio Modal - Text-->
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque
                  assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam
                  velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.
                </p>
                <button class="btn btn-primary" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Close Window
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Portfolio Modal 5-->
  <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog"
    aria-labelledby="portfolioModal5Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"><i class="fas fa-times"></i></span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title-->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal5Label">Locked
                  Safe</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Modal - Image-->
                <img class="img-fluid rounded mb-5" src="assets/img/portfolio/safe.png" alt="" />
                <!-- Portfolio Modal - Text-->
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque
                  assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam
                  velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.
                </p>
                <button class="btn btn-primary" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Close Window
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Portfolio Modal 6-->
  <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog"
    aria-labelledby="portfolioModal6Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"><i class="fas fa-times"></i></span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title-->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal6Label">Submarine
                </h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Modal - Image-->
                <img class="img-fluid rounded mb-5" src="assets/img/portfolio/submarine.png" alt="" />
                <!-- Portfolio Modal - Text-->
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque
                  assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam
                  velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.
                </p>
                <button class="btn btn-primary" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Close Window
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@include file="/WEB-INF/components/footer.html"%>
  <!-- Bootstrap core JS-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
  <!-- Third party plugin JS-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
  <!-- Contact form JS-->
  <script src="assets/mail/jqBootstrapValidation.js"></script>
  <script src="assets/mail/contact_me.js"></script>
  <!-- Core theme JS-->
  <script src="js/scripts.js"></script>
</body>

</html>
