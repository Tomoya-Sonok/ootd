Rails.application.routes.draw do
  devise_for :users
  resources :outfits, only:[:index, :new, :show, :edit]
  root 'outfits#index'

end
