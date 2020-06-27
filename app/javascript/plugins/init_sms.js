
const initSms = () => {
  var control_btn = document.querySelectorAll(".ctrigsms");

  control_btn.forEach(function(elem) {
    elem.addEventListener("click", function () {

  var caption_active = document.querySelector(".main-content.carousel-item.active");
    console.log("ceci est la caption active");
    console.log(caption_active);
    if (caption_active.innerHTML.includes('climb till 1st floor')) {
      console.log('elle contient "climb till 1st..."');
    ajaxSms();
    } else {
    console.log('elle contient:');
    console.log(caption_active.innerHTML);
    };
  });
});
  const ajaxSms = () => {
      Rails.ajax({
      url: "/chocolate-sms",
      type: "post",
      error: function(data) {}
      })
      console.log(" !! FIN de ajaxSms !!");
  };

};
export {initSms} ;
