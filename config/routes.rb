Rails.application.routes.draw do
  resources :matches
  resources :owners
  resources :dogs
  post 'login', to: 'sessions#login'
  post 'feed', to: 'owners#feed'
  post 'remove', to: 'owners#remove'
end
