Rails.application.routes.draw do
  resources :pixels, only: [:create, :show, :new]
end
