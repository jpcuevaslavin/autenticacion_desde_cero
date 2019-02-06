Rails.application.routes.draw do
  resources :dogs

  get 'users/sign_up', to: 'users#new'
  post 'users', to: 'users#create'

  get 'sign_in', to: 'sessions#new'

  post 'sessions', to: 'sessions#create', as: 'sessions'
  delete 'sessions', to: 'sessions#destroy'

  root 'dogs#index'
end
