Rails.application.routes.draw do
  resources :camps

  root to: "home#index"
end
