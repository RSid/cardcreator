Rails.application.routes.draw do
  resources :decks, only: [:index, :show, :new, :create, :destroy, :update, :edit] do
    resources :cards, only: [:index, :show, :new, :create, :destroy, :update, :edit]
  end

  root 'decks#index'

end
