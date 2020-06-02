# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :movies do
    collection do
      get 'search'
    end
    resources :reviews, except: %i[show index]
  end

  root 'movies#index'
end
