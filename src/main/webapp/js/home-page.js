const homePage = {
    "Popular Deals": [
        {
            "id": 1234,
            "name": "Starbucks Mocha 1-for-1",
            "votes": 5,
            "poster": "abc"
        }
    ],
    "Users I Follow": [
        {
            "id": 1234,
            "name": "Starbucks Mocha 1-for-1",
            "votes": 5,
            "poster": "Starbucks"
        }
    ],
    "Tags I Follow": [
        {
            "id": 1234,
            "name": "Starbucks Mocha 1-for-1",
            "votes": 5,
            "poster": "def",
            "tags": ["coffee","1-for-1"]
        }
    ]
}
  
  document.addEventListener('DOMContentLoaded',() => { 
      createHomePage(homePage);
  });
  
  function createHomePage(homePage) {
      var popularDealsData = homePage["Popular Deals"];
      var dealCardElements = document.querySelectorAll(".deal-card");
      for (var i = 0; i < dealCardElements.length; i++) {
          var childElements = dealCardElements[i].children;
          var dealBody = childElements[1];
          var dealTitle = dealBody.children[0];
          dealTitle.innerText = popularDealsData[i].name;
          //var dealText = dealBody.childNodes[1];
          //dealText = homePage["PopularDeals"].
          var dealPoster = dealBody.children[2];
          dealPoster.innerText = popularDealsData[i].poster;
          var dealLink = dealBody.children[3];
          dealLink.href = "/deals/" + popularDealsData[i].id;
      }
  }
