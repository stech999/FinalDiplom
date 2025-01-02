document.addEventListener('DOMContentLoaded', function () {
    const carouselTrack = document.querySelector('.carousel-track');
    const carouselSlides = document.querySelectorAll('.carousel-slide');
    const prevButton = document.querySelector('.carousel-prev');
    const nextButton = document.querySelector('.carousel-next');

    if (!carouselTrack || !carouselSlides.length || !prevButton || !nextButton) {
        console.error('Carousel element not found');
        return;
    }

    let slideWidth;
    let slideIndex = 0;
    let autoSlideInterval;

    function updateCarousel() {
        slideWidth = carouselSlides[0].offsetWidth;
        carouselTrack.style.transform = `translateX(-${slideIndex * slideWidth}px)`;
    }

    function startAutoSlide() {
        autoSlideInterval = setInterval(() => {
            slideIndex = (slideIndex + 1) % carouselSlides.length;
            updateCarousel();
        }, 5000);
    }

    function stopAutoSlide() {
        clearInterval(autoSlideInterval)
    }

    prevButton.addEventListener('click', () => {
        stopAutoSlide();
        slideIndex = (slideIndex - 1 + carouselSlides.length) % carouselSlides.length;
        updateCarousel();
        startAutoSlide();
    });

    nextButton.addEventListener('click', () => {
        stopAutoSlide();
        slideIndex = (slideIndex + 1) % carouselSlides.length;
        updateCarousel();
        startAutoSlide();
    });

    window.addEventListener('resize', () => {
        updateCarousel();
    });

    startAutoSlide();
    updateCarousel()

});