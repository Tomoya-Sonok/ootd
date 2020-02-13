Rails.application.routes.draw do
  resources :outfits, only:[:index, :new, :show, :edit]
  root 'outfits#index'

end
