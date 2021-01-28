Rails.application.routes.draw do
  devise_for :users,
  controllers: { registrations: 'registrations' } 

  root 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/users/:id', to: 'users#show', as: 'user'
end
