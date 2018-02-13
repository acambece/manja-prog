Rails.application.routes.draw do
  devise_for :users

  # /restaurants/
  resources :restaurants do
    # /restaurants/:restaurant_id/dishes
    resources :dishes
  end
end
