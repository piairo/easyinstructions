
const initBlink = () => {
var timer;

blinking($("#blinkbutton"));

function blinking(elm) {
    timer = setInterval(blink, 10);
    function blink() {
        elm.fadeOut(600, function() {
           elm.fadeIn(600);
        });
    }
}

};

export {initBlink} ;

