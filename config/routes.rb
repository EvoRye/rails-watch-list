Rails.application.routes.draw do
  root to: 'lists/index'
  resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:index, :new, :create, :destroy] do
      resources :movies, only: [:index]
    end
  end
end
