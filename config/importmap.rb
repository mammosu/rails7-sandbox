# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@rails/activestorage", to: "https://ga.jspm.io/npm:@rails/activestorage@7.0.0/app/assets/javascripts/activestorage.esm.js"
pin "stimulus-carousel", to: "https://ga.jspm.io/npm:stimulus-carousel@4.0.0/dist/stimulus-carousel.es.js"
pin "dom7", to: "https://ga.jspm.io/npm:dom7@4.0.2/dom7.esm.js"
pin "ssr-window", to: "https://ga.jspm.io/npm:ssr-window@4.0.2/ssr-window.esm.js"
pin "swiper/bundle", to: "https://ga.jspm.io/npm:swiper@7.4.1/swiper-bundle.esm.js"
