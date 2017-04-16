Rails.application.routes.draw do
  devise_for :users

  resources :movies do
      resources :summaries, only: [:new, :create]
  end

  resources :votes, only: [:new, :create]

  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
