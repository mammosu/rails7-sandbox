Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "users", to: "devise/sessions#new"
  end
  resources :categories
  resources :posts
  get "about" => "static_pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
