Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Verb Path, to: "controller#action"
  get "/prices", to: "home#prices"

  post "/prices", to: "home#prices"

end
