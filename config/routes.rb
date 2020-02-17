Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :outfits
  root 'outfits#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
