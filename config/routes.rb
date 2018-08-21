Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :conversations, only: [:index]
  resources :messages, only: [:index, :create]
  resources :users, only: [:create]
  resources :subscriptions, only: [:create]

  post "/login", to: 'users#login'
  get "/:user_id/conversations", to: 'conversations#user_conversations'
  post "/:user_id/conversations", to: 'conversations#create'
  get '/current_user', to: 'users#get_current_user'

  mount ActionCable.server => '/cable'


end
