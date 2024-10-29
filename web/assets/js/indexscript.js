window.addEventListener("scroll", function () {
    var header = document.querySelector("header");
    header.classList.toggle("sticky", window.scrollY > 0);
    header.classList.toggle("mini", window.scrollY > 0);
});
window.addEventListener("scroll", function () {
    var dropdowns = document.querySelectorAll(".header__dropdown--info");
    var headerHeight = 93; // Height when scrolled down

    dropdowns.forEach(function (dropdown) {
        if (window.scrollY > 0) {
            dropdown.classList.add("scroll");
        } else {
            dropdown.classList.remove("scroll");
        }
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const searchButton = document.querySelector(
            ".header__navbar-search-onmobile"
            );
    const searchBox = document.querySelector(".search-hidden-box");

    searchButton.addEventListener("click", function () {
        if (searchBox.style.display === "block") {
            searchBox.style.display = "none";
        } else {
            searchBox.style.display = "block";
        }
    });
});

function showSidebar() {
    const sidebar = document.querySelector(".sidebar");
    sidebar.style.display = "flex";
}
function hideSidebar() {
    const sidebar = document.querySelector(".sidebar");
    sidebar.style.display = "none";
}

let thumbnails = document.getElementsByClassName("product__detail-thumbnail");
let activeImages = document.getElementsByClassName("active");

for (var i = 0; i < thumbnails.length; i++) {
    thumbnails[i].addEventListener("mouseover", function () {
        if (activeImages.length > 0) {
            activeImages[0].classList.remove("active");
        }
        this.classList.add("active");
        document.getElementById("featured").src = this.src;
    });
}

let buttonRight = document.getElementById("slideRight");
let buttonLeft = document.getElementById("slideLeft");
let slider = document.querySelector(".product__detail-slider");

buttonLeft.addEventListener("click", function () {
    slider.scrollLeft -= 180;
});

buttonRight.addEventListener("click", function () {
    slider.scrollLeft += 180;
});
document.addEventListener('DOMContentLoaded', () => {
    const container = document.getElementById('container');
    const registerBtn = document.getElementById('register');
    const loginBtn = document.getElementById('login');

    registerBtn.addEventListener('click', () => {
        container.classList.add("active");
    });

    loginBtn.addEventListener('click', () => {
        container.classList.remove("active");
    });
});