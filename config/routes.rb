Rails.application.routes.draw do
  get 'cities/index'

  resources :cities, only: [:index]
end
