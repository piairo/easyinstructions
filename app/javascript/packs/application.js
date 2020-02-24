/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "bootstrap";


// COPY TO CLIPBOARD
import { initCopyToClipboard } from '../plugins/init_copy_to_clipboard';
initCopyToClipboard()


// TYPEDJS
import initTyped from '../plugins/init_typed';
import { addFlashMessage } from '../plugins/init_flash_messages';
initTyped();

//BANNER_WAGON
import { initUpdateNavbarOnScroll } from '../plugins/navbar';
initUpdateNavbarOnScroll();

//SORTABLE
import { initSortable } from'../plugins/init_sortable.js';

const initTrigger = () => {
   const trigger = document.querySelector("#trigger");
  trigger.addEventListener("click", event => {
  event.preventDefault();
  alert('you can now drag and drop');
  initSortable();
  })
};

if (document.querySelector("#trigger")) {
  initTrigger();
}

//BLINK MODE (home button)
import { initBlink } from'../plugins/init_blink.js';

if (document.querySelector("#blinkbutton")) {
  initBlink();
}











