Rails.application.routes.draw do
  get 'teacher/index'
  get 'parent/index'
  get 'student/index'
  get 'home/index'
  devise_for :users
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
