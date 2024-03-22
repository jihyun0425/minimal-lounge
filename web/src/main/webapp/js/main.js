const wrap = document.getElementById("wrap");
wrap.classList.remove("img");
wrap.offsetWidth;
wrap.classList.add("img");

const wrap = document.getElementById("wrap");

// Add a class to the main container to set a max height
wrap.classList.add("max-height-container");

// Force a reflow
wrap.offsetWidth;

// Remove the class to allow normal flow
wrap.classList.remove("max-height-container");


document.addEventListener("DOMContentLoaded", function() {
    const menuToggle = document.querySelector(".menu-toggle");
    const menu = document.querySelector(".login");

    menuToggle.addEventListener("click", function() {
        menu.classList.toggle("active"); // 메뉴의 활성/비활성 상태를 토글
        menuToggle.classList.toggle("active"); // 햄버거 버튼의 활성/비활성 상태를 토글
    });
});


