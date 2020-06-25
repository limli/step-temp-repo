const deal = {
  "id": 1234,
  "name": "Starbucks Mocha 1-for-1",
    "restaurant": {
        "id": 1234,
        "name": "Starbucks"
    },
    "tags": [
        {
             "id": 1234,
             "name": "1-for-1"
        },
        {
             "id": 1234,
             "name": "mocha"
        }
    ],
    "poster": {
        "id": 1234,
        "name": "Alice Chen",
        "username": "alicechen",
        "profile-pic": "/some-url-12345.jpg"
    },
    "source": "https://www.starbucks.com.sg/",
    "description": "Starbucks Mocha 1-for-1",
    "start": "23/06/2020",
    "end": "25/06/2020",
    "votes": 5
}

const commentsEle = {
    "comments": [
        {
            "id": 1234,
            "user": {
                "id": 1234,
                "name": "Alice Chen",
                "username": "alicechen",
                "profile-pic": "/some-url-12345.jpg"
            },
            "timestamp": 123456789, // in milliseconds
            "text": "I ate here last week. Portions too small."
        }
    ],
    "token": "bhfsdaog" // token for pagination
}

document.addEventListener('DOMContentLoaded',() => { 
    getDeal(deal);
    getComments(commentsEle);
});

function getDeal(dealData) {
    const dealTitleElement = document.getElementById('deal-title');
    dealTitleElement.innerText = dealData.name;
    const dealInfoElement = document.getElementById('deal-info');
    dealInfoElement.innerText = dealData.description;
    const dealRestaurantElement = document.getElementById('restaurant-info');
    dealRestaurantElement.innerText = dealData.restaurant.name;
    const dealOutlets = document.getElementById('all-or-selected');
    /*if (dealData.outlets.length*2 < dealData.restaurant.outlets) {
        dealOutlets.innerText = "All outlets but: ";
    }
    else {
        dealOutlets.innerText = "Selected outlets only: ";
        const outletList = document.getElementById("outlet-list");
        for (const outlet of dealData.outlets) {
            const outletListItem = document.createElement("li");
            outletListItem.classList.add("list-group-item");
            outletList.appendChild(outletListItem);
        }
    }*/
    const dealValidStart = document.getElementById("start-date");
    dealValidStart.innerText = dealData.start;
    const dealValidEnd = document.getElementById("end-date");
    dealValidEnd.innerText = dealData.end;
    const dealPoster = document.getElementById("user-poster");
    dealPoster.href = "/user/" + dealData.poster.id;
    dealPoster.innerText = dealData.poster.username;
    const dealSource = document.getElementById("deal-source");
    dealSource.innerText = dealData.source;
    dealSource.href = dealData.source;
}

function getComments(commentsEle) {
    const commentListElement = document.getElementById('comment-list');
    commentListElement.innerHTML = "";
    commentsEle.comments.forEach((comment) => {
        commentListElement.appendChild(createCommentElement(comment));
    });
}

/** Creates an <li> element containing text and image. */
function createCommentElement(commentEntity) {
    const commentElement = document.createElement('div');
    commentElement.className = 'comment border border-info';

    const textElement = document.createElement('span');
    textElement.innerText = commentEntity.user.username + ": " + commentEntity.text;

    commentElement.appendChild(textElement);
    return commentElement;
}
