Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "albums#index"
  resources :albums do
    resources :photos do
      resources :comments
    end
  end
end
