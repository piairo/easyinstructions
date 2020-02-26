
const initFullScreen = () => {

var trigger = document.querySelector("#carouselExampleIndicators");
trigger.addEventListener("click", function () {
  document.documentElement.requestFullscreen();
})

};

export {initFullScreen} ;
