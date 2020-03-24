Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'customers#index'

  resources :customers do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end
end
