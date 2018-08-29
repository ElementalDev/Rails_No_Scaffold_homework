Rails.application.routes.draw do
  resources :books
  resources :author

  get "/", to: "authors#index", as: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
