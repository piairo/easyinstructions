
const initFullScreen = () => {

var trigger = document.querySelector(".recette-image");
trigger.addEventListener("click", function () {
  document.documentElement.requestFullscreen();
})

};

export {initFullScreen} ;
