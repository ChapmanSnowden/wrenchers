Wrenchers::Application.routes.draw do
  devise_for :users
  root 'garage#index'

	resource :bike, only: [:new, :create]
end
