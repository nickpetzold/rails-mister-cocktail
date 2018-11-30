import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Welcome to my lounge", "Take a look around", "Why not take off your pants?"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
