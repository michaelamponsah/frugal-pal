Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get  '/users/sign_out' => 'devise/sessions#destroy'
  end

  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'home#index'
  end

  resources :groups, only: [:index, :new, :destroy, :show, :create] do
    resources :expenses, only: [:new, :create]
  end
end
