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
        'pic': '/some-url-12345.jpg'
      }
  ],
  'following': [
      {
          'id': 1234,
          'name': 'Alice Chen',
          'username': 'alicechen',
          'pic': '/some-url-12345.jpg'
      },
      {
          'id': 2345,
          'name': 'Starbucks',
          'username': 'starbucks'
      },
      {
          'id': 2345,
          'type': 'restaurant',
          'name': 'Starbucks'
      },
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
  
  const dealName = document.createElement('h4');
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
  for (const deal of user.dealsUploaded) {
    const dealCard = createDealCard(deal);
    dealsUploadedContainer.appendChild(dealCard);
  }
}

window.onload = function() {
  configureUserProfile(user);
}