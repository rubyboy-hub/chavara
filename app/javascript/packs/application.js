// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
// = require addfile

//= require jquery3
//= require popper
//= require bootstrap
//= require data-confirm-modal

require("packs/popper.min")
require("packs/bootstrap.min")
require("packs/pogo-slider.min")
require("packs/magnific-popup.min")
require("packs/slider-index")
require("packs/smoothscroll")
require("packs/form-validator.min")
require("packs/contact-form-script")
require("packs/isotope.min")
require("packs/images-loded.min")
require("packs/custom")
require("packs/jquery.min")




Rails.start()
Turbolinks.start()
ActiveStorage.start()

