// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// = require jquery
//= require jquery_ujs
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("moment/locale/ja")
require("tempusdominus-bootstrap-4")
// require('@client-side-validations/client-side-validations')
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import '../stylesheets/application'
import './bootstrap_custom.js'
import './bootstrap.bundle.min.js'
import './adminlte.js'
import './Chart.min.js'
import './demo.js'
import './jquery.validate.js'
import './dashboard.js'

