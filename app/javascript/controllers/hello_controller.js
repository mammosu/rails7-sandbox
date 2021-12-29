import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loading"]

  connect() {
    if (this.isPreview) {
      this.loadingTarget.classList.add("hidden")
    }
  }

  disableSubmit() {
    this.submitButtons().forEach(button => {
      button.disabled = true
    })
    this.loadingTarget.classList.remove("hidden")
  }

  submitButtons() {
    return this.element.querySelectorAll("input[type='submit']")
  }

  isPreview() {
    return document.documentElement.hasAttribute('data-turbolinks-preview')
  }
}

