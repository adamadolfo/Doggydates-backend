Rails.application.routes.draw do
  resources :matches
  resources :owners
  resources :dogs
  post 'login', to: 'sessions#login'
  post 'feed', to: 'owners#feed'
end
