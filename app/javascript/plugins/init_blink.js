
const initBlink = () => {
var timer;

blinking($("#blinkbutton"));

function blinking(elm) {
    timer = setInterval(blink, 10);
    function blink() {
        elm.fadeOut(700, function() {
           elm.fadeIn(700);
        });
    }
}

};

export {initBlink} ;

