import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  // Classes store css classes you can apply to targets
  static classes = ["active", "hide"]
  // Targets are the elements you want to manipulate
  static targets = ["pill", "title", "author"]

  toggle (event) {
    this.pillTargets.forEach((pill) => pill.classList.remove(...this.activeClasses))
    event.currentTarget.classList.add(...this.activeClasses)

    if (event.params.search === "title") {
      this.authorTarget.classList.add(this.hideClass)
      this.titleTarget.classList.remove(this.hideClass)
    } else {
      this.authorTarget.classList.remove(this.hideClass)
      this.titleTarget.classList.add(this.hideClass)
    }
  }
}
