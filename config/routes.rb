Rails.application.routes.draw do
  root "home#index"
  devise_for :users

  devise_scope :user do
    get  '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :groups, only: [:index, :new, :destroy, :show, :create] do
    resources :expenses, only: [:new, :create]
  end
end
