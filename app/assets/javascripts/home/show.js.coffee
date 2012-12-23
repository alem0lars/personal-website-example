#= require slides.js


$(document).ready ->
  $('#presentation-items-wrp').slides
    preload: true,
    preloadImage: '/assets/loading.gif',
    play: 5000,
    pause: 2500,
    hoverPause: true,
    container: 'presentation-items',
    animationStart: (current) -> # Hide the caption
      $('.presentation-item-caption').animate({ bottom: -35 }, 100)
    animationComplete: (current) -> # Show the caption
      $('.presentation-item-caption').animate({ bottom: 0 }, 200)
    slidesLoaded: -> # Show the caption
      $('.presentation-item-caption').animate({ bottom: 0 }, 200)
