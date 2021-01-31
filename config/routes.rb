Rails.application.routes.draw do
  devise_for :users,
  controllers: { registrations: 'registrations' } 

  root 'posts#index'

  get '/users/:id', to: 'users#show', as: 'user'

  resources :posts, only: %i(index new create show destroy) do
    resources :photos, only: %i(create)

    resources :likes, only: %i(create destroy)
  end
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
