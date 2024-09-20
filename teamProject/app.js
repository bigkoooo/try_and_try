const cardText = [
    {name: "Don Joel", position: "Web Developer", email: "donjoel@example.com", phone: "216-362-0665", address: "2699 Glenwood Avenue", city: "Brook Park, OH 44142"},
    {name: "Joe Schmoe", position: "Graphic Designer", email: "joeschmoe@example.com", phone: "407-712-8549", address: "469 Grand Avenue", city: "Winter Park, FL 32789"},
    {name: "Clint Westwood", position: "Customer Support", email: "clintwestwood@example.com", phone: "865-217-3165", address: "2212 Brown Avenue", city: "Hartford, TN 37753"},
    {name: "Ann Thrax", position: "Project Manager", email: "annthrax@example.com", phone: "808-293-4613", address: "3801 Stratford Drive", city: "Laie, HI 96762"}
  ];
  
  function createCard(name, position, email, phone, address, city) {
    const cardDiv = document.createElement('div');
    cardDiv.className = 'contents';
  
    const h2 = document.createElement('h2');
    const strong = document.createElement('strong');
    strong.textContent = 'ABC';
    h2.appendChild(strong);
    h2.appendChild(document.createTextNode('Design'));
    cardDiv.appendChild(h2);
  
    const h3 = document.createElement('h3');
    h3.textContent = name;
    cardDiv.appendChild(h3);
  
    cardDiv.appendChild(document.createTextNode(position));
    cardDiv.appendChild(document.createElement('br'));
    cardDiv.appendChild(document.createElement('br'));
  
    const emailSpan = document.createElement('span');
    emailSpan.textContent = '✉️';
    cardDiv.appendChild(emailSpan);
    cardDiv.appendChild(document.createTextNode(email));
    cardDiv.appendChild(document.createElement('br'));
  
    const phoneSpan = document.createElement('span');
    phoneSpan.textContent = '📞';
    cardDiv.appendChild(phoneSpan);
    cardDiv.appendChild(document.createTextNode(phone));
    cardDiv.appendChild(document.createElement('br'));
    cardDiv.appendChild(document.createElement('br'));
  
    cardDiv.appendChild(document.createTextNode(address));
    cardDiv.appendChild(document.createElement('br'));
    cardDiv.appendChild(document.createTextNode(city));
  
    return cardDiv;
  }
  
  function createCityOnly(city) {
    const cityDiv = document.createElement('div');
    cityDiv.className = 'contents';
    const citySpan = document.createElement('span');
    citySpan.className = 'city';
    citySpan.textContent = city;
    cityDiv.appendChild(citySpan);
    return cityDiv;
  }
  
  document.addEventListener('DOMContentLoaded', () => {
    const cardsContainer = document.getElementById('cards-container');
    for (let cards = 36; cards > 0; cards--) {
      const c = (cards - 1) % cardText.length;
      const cardData = cardText[c];
  
      const stackDiv = document.createElement('a');
      stackDiv.href = "#";
      stackDiv.className = 'stack';
  
      const topCard = document.createElement('div');
      topCard.className = 'card top';
      topCard.appendChild(createCard(cardData.name, cardData.position, cardData.email, cardData.phone, cardData.address, cardData.city));
  
      const midTopCard = document.createElement('div');
      midTopCard.className = 'card mid-top';
      midTopCard.appendChild(createCityOnly(cardData.city));
  
      const midBottomCard = document.createElement('div');
      midBottomCard.className = 'card mid-bottom';
      midBottomCard.appendChild(createCityOnly(cardData.city));
  
      const bottomCard = document.createElement('div');
      bottomCard.className = 'card bottom';
      bottomCard.appendChild(createCityOnly(cardData.city));
  
      const shadowCard = document.createElement('div');
      shadowCard.className = 'card shadow';
  
      stackDiv.appendChild(topCard);
      stackDiv.appendChild(midTopCard);
      stackDiv.appendChild(midBottomCard);
      stackDiv.appendChild(bottomCard);
      stackDiv.appendChild(shadowCard);
  
      cardsContainer.appendChild(stackDiv);
    }
  
    window.addEventListener("resize", scrollGrid);
    window.addEventListener("scroll", scrollGrid);
    scrollGrid();
  });
  
  function scrollGrid() {
    const bodyHeight = document.body.offsetHeight;
    const mainHeight = document.querySelector("main").offsetHeight;
    const cards = document.querySelector(".cards");
    const transY = (window.pageYOffset / (mainHeight - bodyHeight)) * -100;
    cards.style.setProperty("--scroll", transY + "%");
  }
  