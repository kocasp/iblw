Rails.application.routes.draw do
  # devise_for :doctors, controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations',
  # }
  # devise_for :patients, controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations',
  # }
  devise_for :patients
  devise_for :doctors
  resources :users
  resources :solutions
  resources :cases
  resources :dashboards
  root to: 'dashboards#show'
end
