Rails.application.routes.draw do
  resources :pixels, only: [:create, :show, :new]

  get '/visits/:tracking_string', to: 'visits#create'
end
