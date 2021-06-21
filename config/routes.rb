Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'teacher/index'
  get 'parent/index'
  get 'student/index'
  get 'home/index'
  get 'home/about'
  # resources :users
  namespace :api do
    resources :registeration, only: [:show, :create, :update, :destroy, :index]
    get 'typehead/:input' => 'users#typeahead'
  end

  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources:devise_for
  root 'home#index'
end
