document.addEventListener("DOMContentLoaded", () => {
    const backToIntroButton = document.getElementById("backToIntro");
  
    window.addEventListener("scroll", () => {
      if (window.scrollY > 200) {
        backToIntroButton.style.display = "block";
      } else {
        backToIntroButton.style.display = "none";
      }
    });
  
    const smoothScrollLinks = document.querySelectorAll('a[href^="#"]');
    smoothScrollLinks.forEach(link => {
      link.addEventListener("click", (event) => {
        event.preventDefault();
        const targetId = link.getAttribute("href").slice(1);
        const targetElement = document.getElementById(targetId);
        if (targetElement) {
          targetElement.scrollIntoView({ behavior: "smooth" });
        }
      });
    });
  });
  