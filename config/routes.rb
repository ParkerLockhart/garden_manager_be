Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/plants/find', to: 'plant_search#index'
      resources :users, only: [:index, :create, :update, :destroy]
      resources :plants, only: [:index, :show, :create]
      get '/user', to: 'users#show'
      resources :user_plants, only: [:create, :destroy]
    end
  end
end
