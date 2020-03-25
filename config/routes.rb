Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :outfits do
    collection do
      get 'search'
    end
  end
  namespace :api do
    resources :outfits, only: :index, defaults: { format: 'json' }
  end
  root 'outfits#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
