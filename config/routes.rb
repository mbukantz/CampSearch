Rails.application.routes.draw do
  resources :camps
  resources :activities
  resources :campactivities

  root to: "home#index"
end
