import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loading"]

  connect() {
    console.log("Hello World!")
  }

  disableSubmit() {
    this.submitButtons().forEach(button => {
      button.disabled = true
    })
    this.loadingTarget.classList.toggle("hidden")
  }

  submitButtons() {
    return this.element.querySelectorAll("input[type='submit']")
  }
}
