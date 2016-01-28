Rails.application.routes.draw do
  root to: 'jobs#index'
  devise_for :users
  resources :users

  resources :jobs do
    get "job_detail"
  end
end
