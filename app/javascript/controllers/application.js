import { Application } from "@hotwired/stimulus"
import jQuery from "jquery"

const application = Application.start()


// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
window.jQuery = jQuery
window.$ = jQuery

export { application }

//= require jquery
//= require notify-js-legacy/notify
//= require bootstrap/dist/js/bootstrap
//= require popper.js/dist/popper