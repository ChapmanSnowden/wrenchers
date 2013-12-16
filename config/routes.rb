Wrenchers::Application.routes.draw do
  devise_for :users
  root 'garage#index'

	resources :bike, only: [:new, :create, :show]
end
