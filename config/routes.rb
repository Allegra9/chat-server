Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :conversations, only: [:index]
  resources :messages, only: [:index, :create]
  resources :users, only: [:create]
  resources :subscriptions, only: [:create]

  post "/login", to: 'users#login'
  get "/:id/conversations", to: 'conversations#user_conversations'
  post "/:id/conversations", to: 'conversations#create'

  mount ActionCable.server => '/cable'
end
