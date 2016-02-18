Rails.application.routes.draw do
  resources :camps
  resources :activities

  root to: "home#index"
end
