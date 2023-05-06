/**
 * I am trying to dynamically display a preview of user category icon selection when creating a new category.
 * My methodology here is inject the fa-class-name into the class list of a span tag that exists on the add
 * new category page. For some reason, I had to escape HTML space characters before injecting the fa-class-name.
 * This rendered the fontawesome icon class name invalid! Hence the icon does not show
 * 
 * 
 */

let category_icon = document.getElementById('icon-select');
let icon_preview = document.querySelector('[data-icon-preview]');

category_icon.addEventListener('change', (e) => {
  icon_preview.classList.value = '';
  icon_preview.classList.add(e.target.value.replace(/\s/g, ''));
})
