Rails.application.routes.draw do
  resources :decks, only: [:index, :show, :new, :create, :destroy, :update, :edit] do
    resources :cards, only: [:index, :show, :new, :create, :destroy, :update, :edit]

    resources :cards do
      member do
        post 'copy_card', :action => :copy_card
      end
    end
  end

  root 'decks#index'

end
