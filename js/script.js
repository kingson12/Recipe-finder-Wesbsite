//slider header

//you can also add your data
const posts = [
  {
    title: "Discover & Organize Your Favorite Recipes",
    desc: " Find delicious recipes in seconds and keep track of your meal ideas effortlessly. Whether you're searching for the perfect dish or planning your next meal, we've got you covered. Explore, cook, and stay organized—all in one place!",
    link: "https://google.com/",
    bgImg: "images/dish-3.jpg",
    label: "cookies",
  },
  {
    title: "Your Recipe Companion",
    desc: "Explore a world of flavors and stay organized with ease! Search for mouthwatering recipes and keep track of your meal ideas with our simple-to-use planner. Cooking just got smarter!",
    link: "https://google.com/",
    bgImg: "images/dish-2.jpg",
    label: "cookies",
  },

  {
    title: "Cook. Plan. Enjoy",
    desc: "From discovering new recipes to organizing your favorite meals, we make cooking effortless. Find the perfect dish and manage your recipe to-do list seamlessly—all in one place!",
    link: "https://google.com/",
    bgImg: "images/dish-1.jpg",
    label: "pizza",
  },
];

let currentSlide = 0;

function showSlide(slideIndex) {
  const slide = posts[slideIndex];
  document.querySelector(".headertitle").textContent = slide.title;
  document.querySelector(".headerpera").textContent = slide.desc;
  document.querySelector(".headerbtn").href = slide.link;
  document.querySelector(
    ".headerimg"
  ).style.background = `url(${slide.bgImg}) no-repeat center center/cover`;
}

// initial slide
showSlide(currentSlide);

//header post change

const headerPosts = document.querySelector(".headercards");

// const headerPostsCards = () => {
//   const updateSlider = () => {
//     headerPosts.innerHTML = "";
//     for (let i = currentSlide; i < currentSlide + 6; i++) {
//       const post = posts[i % posts.length];
//       const postElement = document.createElement("a");
//       postElement.classList.add("headercard");
//       postElement.classList.add("flex");
//       postElement.href = `${post.link}`;
//       postElement.innerHTML = `
//              <img src="${post.bgImg}" />

//             <div class="hcardinfo">
//               <span>${post.label}</span>
//               <h3>${post.title}</h3>`;

//       headerPosts.appendChild(postElement);
//     }
//   };

//   //initialize the slider

//   updateSlider();
// };

// headerPostsCards();

function nextSlide() {
  currentSlide = (currentSlide + 1) % posts.length;
  showSlide(currentSlide);
  headerPostsCards(currentSlide);
}

// change slide every 3 seconds

setInterval(nextSlide, 3000);

//Nav Sticky

const mainnav = document.querySelector(".mainnav");

window.addEventListener("scroll", () => {
  if (document.documentElement.scrollTop > 2) {
    mainnav.classList.add("sticky");
  } else {
    mainnav.classList.remove("sticky");
  }
});

//navbar on off

const navdiv = document.querySelector(".navonoff");
const navtoggle = document.querySelector("#checkbox2");
const navlist = document.querySelector(".navlist");

navtoggle.addEventListener("change", () => {
  if (navtoggle.checked) {
    navlist.style.right = "-150px";
  } else {
    navlist.style.right = "-400px";
  }
});

//count up section

document.addEventListener("DOMContentLoaded", () => {
  const counters = document.querySelectorAll(".counter");

  function runCounter() {
    counters.forEach((counter) => {
      counter.innerText = "0"; // Reset counter to 0

      const updateCount = () => {
        const target = +counter.getAttribute("data-target");
        const count = +counter.innerText;
        const increment = target / 100;

        if (count < target) {
          counter.innerText = Math.ceil(count + increment);
          setTimeout(updateCount, 20);
        } else {
          counter.innerText = target;
        }
      };
      updateCount();
    });
  }

  // Run the counter initially
  runCounter();

  // Repeat the counter animation every 3 minutes (180,000 milliseconds)
  setInterval(runCounter, 10000);
});
