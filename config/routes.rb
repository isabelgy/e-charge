Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :stations, only: [ :index, :show, :update, :create ]
    end
  end
end
