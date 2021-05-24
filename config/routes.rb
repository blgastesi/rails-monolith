# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users do
      post 'approve', to: 'users#approve', on: :member
    end
    root to: 'users#index'
  end

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
    get 'password_recovery', to: 'devise/passwords#new'
  end

  devise_for :users
  root to: 'marketing#index'
end
