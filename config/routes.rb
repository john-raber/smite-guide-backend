Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create] do
        get 'profile', on: :collection
      end
      resources :gods, only: [:index]

      post '/login', to: 'auth#create'
    end
  end
end
