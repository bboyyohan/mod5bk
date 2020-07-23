Rails.application.routes.draw do
  resources :logs
  # resources :users
  
  namespace :api do
    namespace :v1 do
      resources :users, only: :index
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
