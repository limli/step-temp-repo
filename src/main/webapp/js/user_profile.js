const user = 
{
  'id': 1234,
  'name': 'Aaron Tan',
  'username': 'aarontan',
  'email': 'aaront@example.com',
  'picture': '/assets/img/portfolio/cabin.png',
  'bio': 'a short bio of aaron tan',
  'dealsUploaded': [
    {
        'id': 1234,
        'name': 'Starbucks Mocha 1-for-1',
        'votes': 5,
        'poster': 'def',
        'image': 'assets/img/avataaars.svg'
    },
    {
      'id': 1234,
      'name': 'Starbucks Mocha 1-for-1',
      'votes': 5,
      'poster': 'def',
      'image': 'assets/img/avataaars.svg'
    },
    {
      'id': 1234,
      'name': 'Starbucks Mocha 1-for-1',
      'votes': 5,
      'poster': 'def',
      'image': 'assets/img/avataaars.svg'
    },
    {
      'id': 1234,
      'name': 'Starbucks Mocha 1-for-1',
      'votes': 5,
      'poster': 'def',
      'image': 'assets/img/avataaars.svg'
    },
    {
      'id': 1234,
      'name': 'Starbucks Mocha 1-for-1',
      'votes': 5,
      'poster': 'def',
      'image': 'assets/img/avataaars.svg'
    },
  ],
  'followers': [
      {
        'id': 1234,
        'name': 'Alice Chen',
        'username': 'alicechen',
        'pic': '/assets/img/avataaars.svg'
      },
      {
        'id': 1234,
        'name': 'Alice Chen',
        'username': 'alicechen',
        'pic': '/assets/img/avataaars.svg'
      },
      {
        'id': 1234,
        'name': 'Alice Chen',
        'username': 'alicechen',
        'pic': '/assets/img/avataaars.svg'
      },
      {
        'id': 1234,
        'name': 'Alice Chen',
        'username': 'alicechen',
        'pic': '/assets/img/avataaars.svg'
      },
      {
        'id': 1234,
        'name': 'Alice Chen',
        'username': 'alicechen',
        'pic': '/assets/img/avataaars.svg'
      },
      {
        'id': 1234,
        'name': 'Alice Chen',
        'username': 'alicechen',
        'pic': '/assets/img/avataaars.svg'
      }
  ],
  'following': [
      {
          'id': 1234,
          'name': 'Alice Chen',
          'username': 'alicechen',
          'pic': '/assets/img/avataaars.svg'
      },
      {
        'id': 2345,
        'name': 'Starbucks',
        'username': 'starbucks',
        'pic': '/assets/img/avataaars.svg'
    },
  ],
  'restaurantsFollowed': [
    {
      'id': 2345,
      'name': 'Starbucks',
      'pic': '/assets/img/avataaars.svg'
    },
  ],
  'tagsFollowed': [
    {
      'id': 23452,
      'name': 'coffee'
    }
  ]
}

function configureUserProfile(user) {
  const nameContainer = document.getElementById('name');
  nameContainer.innerText = user.name;
  const usernameContainer = document.getElementById('username');
  usernameContainer.innerText = user.username;
  const emailContainer = document.getElementById('email');
  emailContainer.innerText = user.email;
  const bioContainer = document.getElementById('bio');
  bioContainer.innerText = user.bio;
  const profileImage = document.getElementById('profile-photo');
  profileImage.src = user.picture;

  configureDealsPublishedBy(user);
  configureUserFollowers(user);
  configureUsersFollowedBy(user);
  configureRestaurantsFollowedBy(user);
  configureTagsFollowedBy(user);
}

function createDealCard(deal) {
  const dealCard = document.createElement('div');
  dealCard.classList.add('deal-card', 'card');
  const dealImage = document.createElement('img');
  dealImage.className = 'card-img-top deal-card-img';
  dealImage.src = deal.image;
  dealImage.alt = 'Deal image';
  
  const dealBody = document.createElement('div');
  dealBody.className = 'card-body';
  
  const dealName = document.createElement('h6');
  dealName.className = 'card-title'
  dealName.innerText = deal.name;

  const dealVotes = document.createElement('p');
  dealVotes.className = 'card-text';
  dealVotes.innerText = deal.votes;

  const dealLink = document.createElement('a');
  dealLink.innerText = 'See detail';
  dealLink.href = '/deal/' + deal.id;

  dealBody.appendChild(dealName);
  dealBody.appendChild(dealVotes);
  dealBody.appendChild(dealLink);

  dealCard.appendChild(dealImage);
  dealCard.appendChild(dealBody);
  return dealCard;
}

function configureDealsPublishedBy(user) {
  const dealsUploadedContainer = document.getElementById('deals');
  dealsUploadedContainer.classList.add('card-columns');
  for (const deal of user.dealsUploaded) {
    const dealCard = createDealCard(deal);
    dealsUploadedContainer.appendChild(dealCard);
  }
}

function createSimpleUserContainer(user) {
  const userContainer = document.createElement('div');
  userContainer.className = 'mb-2';
  const imageContainer = document.createElement('div');
  imageContainer.className = 'w-25 d-inline-block text-center';
  const profileImage = document.createElement('img');
  profileImage.src = user.pic;
  profileImage.alt = 'profile photo';
  profileImage.className = 'img-fluid w-50 mx-auto';
  imageContainer.appendChild(profileImage);
  userContainer.appendChild(imageContainer);

  const username = document.createElement('a');
  username.innerText = user.username;
  username.className = 'h6 d-inline-block w-75';
  username.href = '/profile/' + user.id;
  userContainer.appendChild(username);
  return userContainer;
}

function configureUserList(userList, container) {
  for (const user of userList) {
    const userContainer = createSimpleUserContainer(user);
    userContainer.classList.add('mw-25');
    container.appendChild(userContainer);
  }
}

function configureUsersFollowedBy(user) {
  const followeeContainer = document.getElementById('following');
  configureUserList(user.following, followeeContainer);
}

function configureUserFollowers(user) {
  const followersContainer = document.getElementById('followers');
  configureUserList(user.followers, followersContainer);
}

function createSimpleRestaurantContainer(restaurant) {
  const restaurantContainer = document.createElement('div');
  restaurantContainer.className = 'mb-2';
  const imageContainer = document.createElement('div');
  imageContainer.className = 'w-25 d-inline-block text-center';
  const restaurantImage = document.createElement('img');
  restaurantImage.src = restaurant.pic;
  restaurantImage.alt = 'restaurant photo';
  restaurantImage.className = 'img-fluid w-50 mx-auto';
  imageContainer.appendChild(restaurantImage);
  restaurantContainer.appendChild(imageContainer);

  const restaurantName = document.createElement('a');
  restaurantName.innerText = restaurant.name;
  restaurantName.className = 'h6 d-inline-block w-75';
  restaurantName.href = '/restaurant/' + restaurant.id;
  restaurantContainer.appendChild(restaurantName);
  return restaurantContainer;
}

function configureRestaurantsFollowedBy(user) {
  const restaurantsContainer = document.getElementById('restaurants');
  for (const restaurant of user.restaurantsFollowed) {
    const restaurantContainer = createSimpleRestaurantContainer(restaurant);
    restaurantsContainer.appendChild(restaurantContainer);
  }
}

function createTagContainer(tag) {
  const tagContainer = document.createElement('span');
  tagContainer.className = 'badge badge-pill badge-primary';
  tagContainer.innerText = tag.name;
  return tagContainer;
}

function configureTagsFollowedBy(user) {
  const tagsContainer = document.getElementById('tags');
  tagsContainer.classList.add('d-flex', 'flex-wrap');
  for (const tag of user.tagsFollowed) {
    const tagContainer = createTagContainer(tag);
    tagsContainer.appendChild(tagContainer);
  }
}

window.onload = function() {
  configureUserProfile(user);
}