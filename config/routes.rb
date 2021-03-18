Rails.application.routes.draw do
  resources :swipes
  resources :matches
  resources :owners
  resources :dogs
  resources :messages
  resources :conversations
  post 'login', to: 'sessions#login'
  post 'feed', to: 'owners#feed'
  post 'swipe', to: 'owners#swipe'
  post 'accepted', to: 'owners#accepted'
  post 'find-conversations', to: 'owners#findConvos'
end
