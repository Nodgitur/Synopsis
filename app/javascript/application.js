// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//=require jquery
//=require jquery_ujs
//=require bootstrap

let popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
let popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
  return new bootstrap.Popover(popoverTriggerEl)
})

//Rails.start()
//Turbolinks.start()
//ActiveStorage.start()
