import Sortable from 'sortablejs';

const initSortable = () => {

  var list = document.getElementById('items');
  var baseurl = list.dataset.url.slice(0, -6);
  console.log(list);
  console.log("list.dataset.url");
  console.log(list.dataset.url);
  // /instructions/1/steps

  var sortable = Sortable.create(list, {
  group: "localStorage-easyinstructions",
  store: {
    // /**
    //  * Get the order of elements. Called once during initialization.
    //  * @param   {Sortable}  sortable
    //  * @returns {Array}
    //  */
    // get: function (sortable) {

    //   var order = localStorage.getItem(sortable.options.group.name);

    //   return order ? order.split('|') : [];


    // },

    /**
     * Save the order of elements. Called onEnd (when the item is dropped).
     * @param {Sortable}  sortable
     */
    set: function (sortable) {

      var order = sortable.toArray();
      localStorage.setItem(sortable.options.group.name, order.join('|'));



      // PERSO DEV for method:"POST" to rails



  // console.log(sortable);
  // console.log(sortable.el.children);
  // console.log(sortable.el.children[0].dataset);
  // console.log(sortable.el.children[0].childElementCount);
  // console.log(sortable.el.children[0].baseURI);

      console.log(order);
      // ["step_2", "step_3", "step_1", "step_4", "step_5", "step_6", "step_7"]
      var order_by_id = [];
      order.forEach(element => order_by_id.push(Number(element.slice(5, element.length))));

      console.log("order_by_id");
      console.log(order_by_id);
      // [2, 3, 1, 4, 5, 6, 7]

      console.log("baseurl");
      console.log(baseurl);
       // /instructions/123

      // fetch(url, {
      // method: "PATCH",
      // order_by_id: order_by_id
      //    })
var url = `${baseurl}/order/${order_by_id}`
console.log("url");
console.log(url);
// /instructions/1/order/6,7,4,5,3,2,1

if (confirm('Are you sure you want to move position?')) {
  Rails.ajax({
  url: url,
  type: "patch",
   success: function() {
        location.reload();
        },
  error: function(data) {}
  });
}
  else {
    window.location.reload();
  }
      // console.log(path);
      // order.forEach((step) => {
      //   const movie = `<li class="list-inline-item">
      //     <img src="${result.Poster}" alt="">
      //     <p>${result.Title}</p>
      //   </li>`;
      //        results.insertAdjacentHTML("beforeend", movie);
      // });

    }
  }
})




// SAVE DATABASE CHANGES MADE BY SELECTJS

//   document.addEventListener("turbolinks.load",function(){

//   $("#steps").sortable({
//     update:function(e, ui){
//       Rails.ajax({
//         url: $(this).data("url"),
//         type: "PATCH",
//         data: $(this).sortable.toArray(),
//       });
//     }
//   });
// });
};

export { initSortable };
