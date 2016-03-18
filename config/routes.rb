Rails.application.routes.draw do
  resources :deck, only: [:index, :show, :new, :create, :destroy, :update, :edit]
  resources :card, only: [:index, :show, :new, :create, :destroy, :update, :edit]
  root 'deck#index'

end
