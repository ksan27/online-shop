Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: "shops#index"
  resources :shops do
    collection do
      get 'search'
    end
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show] do
    get :favorites, on: :collection
  end
end
