// Select elements
const searchBtn = document.getElementById("searchBtn");
const ingredientInput = document.getElementById("ingredientInput");
const results = document.getElementById("results");
const recipePopup = document.getElementById("recipePopup");
const closePopup = document.getElementById("closePopup");
const recipeTitle = document.getElementById("recipeTitle");
const recipeDetails = document.getElementById("recipeDetails");
const loadingSpinner = document.getElementById("loadingSpinner");

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

// Create suggestion box
const suggestionBox = document.createElement("div");
suggestionBox.classList.add("suggestions");
ingredientInput.parentNode.appendChild(suggestionBox);

let ingredientsList = [];

// Fetch ingredient names
async function fetchIngredients() {
  try {
    const response = await fetch(
      "https://www.themealdb.com/api/json/v1/1/list.php?i=list"
    );
    const data = await response.json();
    ingredientsList = data.meals.map((meal) =>
      meal.strIngredient.toLowerCase()
    );
  } catch (error) {
    console.error("Error fetching ingredients:", error);
  }
}

// Show suggestions when typing
ingredientInput.addEventListener("input", () => {
  const query = ingredientInput.value.toLowerCase();
  suggestionBox.innerHTML = "";

  if (query.length > 0) {
    const filtered = ingredientsList
      .filter((ing) => ing.startsWith(query))
      .slice(0, 5); // Limit to 5 suggestions

    if (filtered.length > 0) {
      suggestionBox.classList.add("show");
    } else {
      suggestionBox.classList.remove("show");
    }

    filtered.forEach((ing) => {
      const div = document.createElement("div");
      div.classList.add("suggestion-item");
      div.textContent = ing;

      // Click to select
      div.addEventListener("click", () => {
        ingredientInput.value = ing;
        suggestionBox.innerHTML = "";
        suggestionBox.classList.remove("show");
      });

      suggestionBox.appendChild(div);
    });
  } else {
    suggestionBox.classList.remove("show");
  }
});

// Hide suggestions when clicking outside
document.addEventListener("click", (e) => {
  if (
    !ingredientInput.contains(e.target) &&
    !suggestionBox.contains(e.target)
  ) {
    suggestionBox.classList.remove("show");
  }
});

// Trigger search on Enter key
ingredientInput.addEventListener("keypress", (e) => {
  if (e.key === "Enter") {
    searchBtn.click();
  }
});

// Fetch recipes based on the ingredient
searchBtn.addEventListener("click", async () => {
  const query = ingredientInput.value.trim();
  if (!query) {
    ingredientInput.classList.add("error");

    setTimeout(() => {
      ingredientInput.classList.remove("error");
    }, 1000);
    return;
  }

  loadingSpinner.classList.remove("hidden");

  const apiUrl = `https://www.themealdb.com/api/json/v1/1/filter.php?i=${query}`;

  try {
    const response = await fetch(apiUrl);
    const data = await response.json();

    loadingSpinner.classList.add("hidden");
    results.innerHTML = "";

    if (!data.meals) {
      results.innerHTML = `<p> No recipes found for "${query}" </p>`;
      return;
    }

    const mealToShow = data.meals.slice(0, 8);

    mealToShow.forEach((meal) => {
      const card = document.createElement("div");
      card.classList.add("card");

      card.innerHTML = `<img src="${meal.strMealThumb}" alt="${meal.strMeal}">
         <h3>${meal.strMeal}</h3>
         <button class="get-recipe" data-type="${meal.idMeal}"> Get Recipe</button>`;

      results.appendChild(card);
    });

    document.querySelectorAll(".get-recipe").forEach((button) => {
      button.addEventListener("click", async (e) => {
        const mealId = e.target.getAttribute("data-type");
        const recipeApi = `https://www.themealdb.com/api/json/v1/1/lookup.php?i=${mealId}`;
        const recipeResponse = await fetch(recipeApi);
        const recipeData = await recipeResponse.json();

        const meal = recipeData.meals[0];
        recipeTitle.textContent = meal.strMeal;

        const instructions = meal.strInstructions
          .split("\n")
          .filter((line) => line.trim() !== "")
          .map((line) => `<p>${line}</p>`)
          .join("");

        recipeDetails.innerHTML = instructions;
        recipePopup.classList.remove("hidden");
      });
    });

    ingredientInput.value = "";
  } catch (error) {
    console.error("Error fetching data", error);
    loadingSpinner.classList.add("hidden");
    results.innerHTML = `<p> Something went wrong, please try again later</p>`;
  }
});

// Close popup when clicking the close button
closePopup.addEventListener("click", () => {
  recipePopup.classList.add("hidden");
});

// Close popup when clicking outside the content
recipePopup.addEventListener("click", (e) => {
  if (e.target === recipePopup) {
    recipePopup.classList.add("hidden");
  }
});

// Hide popup on page load
window.addEventListener("DOMContentLoaded", () => {
  recipePopup.classList.add("hidden");
});

// Fetch ingredient list on page load
fetchIngredients();
