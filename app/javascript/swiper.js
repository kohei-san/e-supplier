const swiper = new Swiper('.swiper-container', {
  // Optional parameters
  initialSlide: 0,
  direction: 'horizontal',
  speed: 300,
  loop: true,
  slidesPerView: 3,
  slidesPreGroup: 3,

  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
    type: 'bullets',
    clickable: true
  },

  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  // And if we need scrollbar
  scrollbar: {
    el: '.swiper-scrollbar',
  },
});
