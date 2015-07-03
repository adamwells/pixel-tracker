Rails.application.routes.draw do
  resources :pixels, only: [:create, :show, :index]
  root to: 'pixels#index'

  get '/visits/:tracking_string', to: 'visits#create'
end
