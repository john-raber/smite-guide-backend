Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create] do
        get 'profile', on: :collection
      end

      post '/login', to: 'auth#create'
      # get '/profile', to: 'users#profile'
    end
  end
end
