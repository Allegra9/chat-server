Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :conversations, only: [:index]
  resources :messages, only: [:index, :create]
  resources :users, only: [:create]
  resources :subscriptions, only: [:create]

  post "/login", to: 'users#login'
  get "/:user_id/conversations", to: 'conversations#user_conversations'
  post "/:user_id/conversations", to: 'conversations#create'

  post "/:user_id/conversations/:conversation_id", to: 'subscriptions#create'

  mount ActionCable.server => '/cable'
end
