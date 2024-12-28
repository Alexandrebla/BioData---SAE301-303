document.addEventListener("DOMContentLoaded", function () {
    const navbar = document.querySelector(".navbar");
    const heroSection1 = document.getElementById("hero1");
    const heroSection2 = document.getElementById("hero2");
    const heroSection3 = document.getElementById("hero3");
    const heroSection4 = document.getElementById("hero4");
    const heroSection5 = document.getElementById("hero5");
  
    window.addEventListener("scroll", function () {
      const heroBottom = heroSection1.getBoundingClientRect().bottom;
      if (heroBottom < 0) {
        navbar.classList.add("scrolled");
      } else {
        navbar.classList.remove("scrolled");
      }
    });

    window.addEventListener("scroll", function () {
      const heroBottom = heroSection2.getBoundingClientRect().bottom;
      if (heroBottom < 0) {
        navbar.classList.add("scrolled");
      } else {
        navbar.classList.remove("scrolled");
      }
    });

    window.addEventListener("scroll", function () {
      const heroBottom = heroSection3.getBoundingClientRect().bottom;
      if (heroBottom < 0) {
        navbar.classList.add("scrolled");
      } else {
        navbar.classList.remove("scrolled");
      }
    });

    window.addEventListener("scroll", function () {
      const heroBottom = heroSection4.getBoundingClientRect().bottom;
      if (heroBottom < 0) {
        navbar.classList.add("scrolled");
      } else {
        navbar.classList.remove("scrolled");
      }
    });

    window.addEventListener("scroll", function () {
      const heroBottom = heroSection5.getBoundingClientRect().bottom;
      if (heroBottom < 0) {
        navbar.classList.add("scrolled");
      } else {
        navbar.classList.remove("scrolled");
      }
    });
  });
  