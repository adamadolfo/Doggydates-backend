Rails.application.routes.draw do
  resources :owners
  resources :dogs
  post 'login', to: 'sessions#create'
end
