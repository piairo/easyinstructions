
const initSms = () => {
var control_btn = document.querySelector(".carousel-control-next");

  control_btn.addEventListener("click", function () {

  var caption_active = document.querySelector(".main-content.carousel-item.active");
    console.log("ceci est la caption active");
    console.log(caption_active);
    if (caption_active.innerHTML.includes('climb till 1st floor')) {
      console.log("you are on chocolate - climb till 1st...");
    Rails.ajax({
    url: "/chocolate-sms",
    type: "post",
    error: function(data) {}
    });
    console.log("FIN de ajax initSms");
    };

 });
 };
export {initSms} ;
