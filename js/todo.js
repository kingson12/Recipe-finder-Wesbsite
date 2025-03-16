//selector
let form = document.getElementById("form");
let textInput = document.getElementById("textInput");
let msg = document.getElementById("msg");
let textarea = document.getElementById("textarea");
let dateInput = document.getElementById("dateInput");
let tasks = document.getElementById("tasks");
let add = document.getElementById("add");

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

//  form

form.addEventListener("submit", (e) => {
  e.preventDefault();
  formValidation();
});

let formValidation = () => {
  if (textInput.value === "") {
    msg.innerHTML = "Task cannot be blank";
  } else {
    msg.innerHTML = "";
    acceptData();
    add.setAttribute("data-bs-dismiss", "modal");
    add.click();
    (() => {
      add.setAttribute("data-bs-dismiss", "");
    })();
  }
};

let data = [];

let acceptData = () => {
  data.push({
    text: textInput.value,
    date: dateInput.value,
    description: textarea.value,
  });

  localStorage.setItem("data", JSON.stringify(data));

  createTasks();
};

let createTasks = () => {
  tasks.innerHTML = "";
  data.map((x, y) => {
    return (tasks.innerHTML += `            <div  id=${y}>
            <span class="fw-bold">${x.text}</span>
            <span class="small text-secondary">${x.date}</span>
            <p>${x.description}</p>

            <span class="options">
                <i  data-bs-toggle="modal" data-bs-target="#form" onClick ="editTask(this)"  class="fas fa-edit"></i>
                <i onClick ="deleteTask(this);createTasks()" class="fas fa-trash-alt"></i>
            </span>
        </div>`);
  });

  resetForm();
};

let deleteTask = (e) => {
  e.parentElement.parentElement.remove();
  data.splice(e.parentElement.parentElement.id, 1);
  localStorage.setItem("data", JSON.stringify(data));
  console.log(data);
};

let editTask = (e) => {
  let selected = e.parentElement.parentElement;
  textInput.value = selected.children[0].innerHTML;
  dateInput.value = selected.children[1].innerHTML;
  textarea.value = selected.children[2].innerHTML;

  deleteTask(e);
};

let resetForm = () => {
  textInput.value = "";
  dateInput.value = "";
  textarea.value = "";
};

(() => {
  data = JSON.parse(localStorage.getItem("data")) || [];
  createTasks();
})();
