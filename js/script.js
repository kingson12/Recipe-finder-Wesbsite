//details array
const posts = [
  {
    title: "Discover & Organize Your Favorite Recipes",
    desc: " Find delicious recipes in seconds and keep track of your meal ideas effortlessly. Whether you're searching for the perfect dish or planning your next meal, we've got you covered.",
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
  {
    title: "Discover & Organize Your Favorite Recipes",
    desc: " Find delicious recipes in seconds and keep track of your meal ideas effortlessly. Whether you're searching for the perfect dish or planning your next meal, we've got you covered.",
    bgImg: "images/1.jpg",
  },
  {
    title: "Your Recipe Companion",
    desc: "Explore a world of flavors and stay organized with ease! Search for mouthwatering recipes and keep track of your meal ideas with our simple-to-use planner. Cooking just got smarter!",
    bgImg: "images/2.jpg",
  },
  {
    title: "Cook. Plan. Enjoy",
    desc: "From discovering new recipes to organizing your favorite meals, we make cooking effortless. Find the perfect dish and manage your recipe to-do list seamlessly—all in one place!",
    bgImg: "images/3.jpg",
  },
  {
    title: "Discover & Organize Your Favorite Recipes",
    desc: " Find delicious recipes in seconds and keep track of your meal ideas effortlessly. Whether you're searching for the perfect dish or planning your next meal, we've got you covered.",
    bgImg: "images/4.jpg",
  },
  {
    title: "Your Recipe Companion",
    desc: "Explore a world of flavors and stay organized with ease! Search for mouthwatering recipes and keep track of your meal ideas with our simple-to-use planner. Cooking just got smarter!",
    bgImg: "images/5.jpg",
  },
  {
    title: "Cook. Plan. Enjoy",
    desc: "From discovering new recipes to organizing your favorite meals, we make cooking effortless. Find the perfect dish and manage your recipe to-do list seamlessly—all in one place!",
    bgImg: "images/6.jpg",
  },
  {
    title: "Discover & Organize Your Favorite Recipes",
    desc: " Find delicious recipes in seconds and keep track of your meal ideas effortlessly. Whether you're searching for the perfect dish or planning your next meal, we've got you covered.",
    bgImg: "images/7.jpg",
  },
  {
    title: "Your Recipe Companion",
    desc: "Explore a world of flavors and stay organized with ease! Search for mouthwatering recipes and keep track of your meal ideas with our simple-to-use planner. Cooking just got smarter!",
    bgImg: "images/8.jpg",
  },
  {
    title: "Cook. Plan. Enjoy",
    desc: "From discovering new recipes to organizing your favorite meals, we make cooking effortless. Find the perfect dish and manage your recipe to-do list seamlessly—all in one place!",
    bgImg: "images/9.jpg",
  },
  {
    title: "Discover & Organize Your Favorite Recipes",
    desc: " Find delicious recipes in seconds and keep track of your meal ideas effortlessly. Whether you're searching for the perfect dish or planning your next meal, we've got you covered.",
    bgImg: "images/10.jpg",
  },
  {
    title: "Your Recipe Companion",
    desc: "Explore a world of flavors and stay organized with ease! Search for mouthwatering recipes and keep track of your meal ideas with our simple-to-use planner. Cooking just got smarter!",
    bgImg: "images/11.jpg",
  },
  {
    title: "Cook. Plan. Enjoy",
    desc: "From discovering new recipes to organizing your favorite meals, we make cooking effortless. Find the perfect dish and manage your recipe to-do list seamlessly—all in one place!",
    bgImg: "images/12.jpg",
  },
  {
    title: "Discover & Organize Your Favorite Recipes",
    desc: " Find delicious recipes in seconds and keep track of your meal ideas effortlessly. Whether you're searching for the perfect dish or planning your next meal, we've got you covered.",
    bgImg: "images/13.jpg",
  },
];

let currentSlide = 0;

//Slide show  Function
let showSlide = (slideIndex) => {
  const slide = posts[slideIndex];
  document.querySelector(".headertitle").textContent = slide.title;
  document.querySelector(".headerpera").textContent = slide.desc;
  document.querySelector(
    ".headerimg"
  ).style.background = `url(${slide.bgImg}) no-repeat center center/cover`;
};

// initial slide
showSlide(currentSlide);

//header post change

const headerPosts = document.querySelector(".headercards");

let nextSlide = () => {
  currentSlide = (currentSlide + 1) % posts.length;
  showSlide(currentSlide);
  // headerPosts(currentSlide);
};

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

const navtoggle = document.querySelector("#checkbox2");
const navlist = document.querySelector(".navlist");
const overlay = document.querySelector("#overlay");

navtoggle.addEventListener("change", () => {
  if (navtoggle.checked) {
    navlist.style.right = "-150px";
    overlay.style.display = "block"; // Show overlay
  } else {
    navlist.style.right = "-400px";
    overlay.style.display = "none"; // Hide overlay
  }
});

// Hide navbar when clicking on the overlay
overlay.addEventListener("click", () => {
  navtoggle.checked = false;
  navlist.style.right = "-400px";
  overlay.style.display = "none";
});

//count up section

document.addEventListener("DOMContentLoaded", () => {
  const counters = document.querySelectorAll(".counter");

  let runCounter = () => {
    counters.forEach((counter) => {
      counter.innerText = "0"; // Reset counter to 0

      const updateCount = () => {
        const target = +counter.getAttribute("data-target");
        const count = +counter.innerText;
        const increment = target / 100;

        if (count < target) {
          counter.innerText = Math.ceil(count + increment);
          setTimeout(updateCount, 60);
        } else {
          counter.innerText = target;
        }
      };
      updateCount();
    });
  };

  // Run the counter initially
  runCounter();

  // Repeat the counter animation every 3 minutes (180,000 milliseconds)
  setInterval(runCounter, 10000);
});

// Preloader Animation

let loader = document.getElementById("preloader");

window.addEventListener("load", function () {
  loader.style.display = "none";
});
