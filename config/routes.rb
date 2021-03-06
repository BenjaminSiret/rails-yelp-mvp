Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :create, :new] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
