Rails.application.routes.draw do
  devise_for :users

  resources :restaurant do
    resources :dishes
  end
end
