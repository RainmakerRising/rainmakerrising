document.addEventListener("DOMContentLoaded", function() {
    // "Read More" functionality for introduction section
    const readMoreBtn = document.getElementById("readMoreBtn");
    const extraText = document.getElementById("extraText");

    readMoreBtn.addEventListener("click", function(event) {
        event.preventDefault();
        if (extraText.style.display === "none") {
            extraText.style.display = "block";
            readMoreBtn.textContent = "Read Less";
        } else {
            extraText.style.display = "none";
            readMoreBtn.textContent = "Read More";
        }
    });

    // Carousel functionality (if you add one)
    let currentSlide = 0;
    const carouselItems = document.querySelectorAll('.carousel-item');

    function showSlide(index) {
        if (index >= carouselItems.length) {
            currentSlide = 0;
        } else if (index < 0) {
            currentSlide = carouselItems.length - 1;
        } else {
            currentSlide = index;
        }

        carouselItems.forEach((item, i) => {
            item.classList.toggle('active', i === currentSlide);
        });
    }

    function nextSlide() {
        showSlide(currentSlide + 1);
    }

    function prevSlide() {
        showSlide(currentSlide - 1);
    }

    showSlide(currentSlide);

    document.getElementById('next-slide').addEventListener('click', nextSlide);
    document.getElementById('prev-slide').addEventListener('click', prevSlide);

    setInterval(nextSlide, 5000); // Auto-rotate every 5 seconds
});
