const reader = new FileReader();
reader.onload = function (e) {
  $('#img-preview').attr('src', e.target.result);
}

function readURL(input) {
  if (input.files && input.files[0]) {
    reader.readAsDataURL(input.files[0]);
    $('#img-preview').show();
  }
}

$('#img-input').change(function () {
  $('#img-preview').hide()
  readURL(this);
});

function selectRestaurant(restaurant) {
  console.log(restaurant)
  const restaurantDiv = $('#restaurant-selected')[0];
  restaurantDiv.innerHTML = `
    <div class="d-flex align-items-center p-2">
      <span class="flex-grow-1">${restaurant.name}</span>
      <img class="search-menu-pic" src="${restaurant.pic}">
    </div>
  `
  const restaurantHiddenInput = $('#restaurant-selected-id-input')[0];
  restaurantHiddenInput.value = restaurant.id;
}

let keepSearchOpen = false;

function searchRestaurant() {
  const text = $('#restaurant-input').val();
  const results = [ // TODO(limli): use backend results
    {
      "id": 1234,
      "name": "KFC",
      "pic": "https://3dpng.com/wp-content/uploads/2020/05/KFC-New-Logo.png"
    },
    {
      "id": 4311,
      "name": "McDonald's",
      "pic": "https://d1nqx6es26drid.cloudfront.net/app/assets/img/logo_mcd.png"
    },
    {
      "id": 9876,
      "name": text,
      "pic": "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/other/cat_relaxing_on_patio_other/1800x1200_cat_relaxing_on_patio_other.jpg"
    }
  ]
  const menu = $('#restaurant-search-results')[0];
  menu.innerHTML = '';
  results.forEach((restaurant) => {
    const row = document.createElement('div');
    row.className = "d-flex align-items-center search-menu-item p-2";
    row.innerHTML = `
      <span class="flex-grow-1">${restaurant.name}</span>
      <img class="search-menu-pic" src="${restaurant.pic}">
    `;
    row.onmousedown = () => selectRestaurant(restaurant);
    menu.appendChild(row);
  });
}

searchRestaurantThrottle = throttle(searchRestaurant, 1000);

$('#restaurant-input').keyup(function () {
  searchRestaurantThrottle();
});

$('#restaurant-search-results').hide()
$('#restaurant-input').focus(function () {
  $('#restaurant-search-results').show()
});
$('#restaurant-input').blur(function () {
  $('#restaurant-search-results').hide()
});

const forms = document.getElementsByClassName('needs-validation');
// Loop over them and prevent submission
const validation = Array.prototype.filter.call(forms, function (form) {
  form.addEventListener('submit', function (event) {
    if (form.checkValidity() === false) {
      event.preventDefault();
      event.stopPropagation();
    }
    const validateGroup = form.querySelectorAll('.validate-me');
    validateGroup.forEach((element) => {
      element.classList.add('was-validated');
    });
    // form.classList.add('was-validated');

  }, false);
});

/**
 * Throttles a function. The function can be called at most once in limit
 * milliseconds.
 * @param {function} func
 * @param {number} limit - The limit of the function in milliseconds
 * @return {function}
 */
function throttle(func, limit) {
  let lastFunc;
  let lastRan;
  return function (...args) {
    if (!lastRan) {
      func(...args);
      lastRan = Date.now();
    } else {
      clearTimeout(lastFunc);
      lastFunc = setTimeout(function () {
        if ((Date.now() - lastRan) >= limit) {
          func(...args);
          lastRan = Date.now();
        }
      }, limit - (Date.now() - lastRan));
    }
  };
}
