Rails.application.routes.draw do
  get '/', to: 'users#new'

  resources :users, only: [:create, :show]
end
