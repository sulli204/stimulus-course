import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  search() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      // Refers to where the controller is defined in the haml files
      this.element.requestSubmit()
    }, 200)
  }
}
