Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'frontend/entrypoints#index'

  namespace :frontend do
    resources :entrypoints, only: [ :index ]
  end

  get '/login/device/token', to: 'tokens#device'

  resources :shortened_urls, param: :code, only: [ :index, :create, :show ]
end
