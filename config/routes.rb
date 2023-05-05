Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :groups, only: [:index, :new, :destroy, :show, :create] do
    resources :expenses, only: [:new, :create]
  end
end
