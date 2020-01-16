import Sortable from 'sortablejs';
const initSortable = () => {
  const list = document.querySelector('#arrivals');
  const baseurl = list.dataset.url.slice(0, -9);
  console.log(list);
  console.log("list.dataset.url");
  console.log(list.dataset.url);
  // /flats/1/arrivals

  var sortable = Sortable.create(list, {
  group: "localStorage-easyinstructions",
  store: {
    /**
     * Get the order of elements. Called once during initialization.
     * @param   {Sortable}  sortable
     * @returns {Array}
     */
    get: function (sortable) {

      var order = localStorage.getItem(sortable.options.group.name);

      return order ? order.split('|') : [];


    },

    /**
     * Save the order of elements. Called onEnd (when the item is dropped).
     * @param {Sortable}  sortable
     */
    set: function (sortable) {
      var order = sortable.toArray();
      localStorage.setItem(sortable.options.group.name, order.join('|'));


      // PERSO method:"POST" to rails
     var myflat_id = baseurl.slice(-10,-9);


  // console.log(sortable);
  // console.log(sortable.el.children);
  // console.log(sortable.el.children[0].dataset);
  // console.log(sortable.el.children[0].childElementCount);
  // console.log(sortable.el.children[0].baseURI);
      console.log(order);
      // ["arrival_2", "arrival_3", "arrival_1", "arrival_4", "arrival_5", "arrival_6", "arrival_7"]
      var order_by_id = [];
      order.forEach(element => order_by_id.push(Number(element.slice(element.length -1))));

      console.log("order_by_id");
      console.log(order_by_id);
      // [2, 3, 1, 4, 5, 6, 7]

      console.log("baseurl");
      console.log(baseurl);
       // /flats/1
      console.log(myflat_id);
      // 1

      // fetch(url, {
      // method: "PATCH",
      // order_by_id: order_by_id
      //    })

var url = `${baseurl}/order/${order_by_id}`
console.log("url");
console.log(url);
// /flats/1/order/6,7,4,5,3,2,1

  Rails.ajax({
  url: url,
  type: "patch",
  success: function(data) {},
  error: function(data) {}
  });

      // console.log(path);
      // order.forEach((arrival) => {
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

//   $("#arrivals").sortable({
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
