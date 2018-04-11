Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :stations, only: [ :index, :show, :update, :create ] do
        member do
          resources :rentals, only: [ :create, :update, :show ]
        end
      end
      resources :users, only: [:create]

    end
  end
end
