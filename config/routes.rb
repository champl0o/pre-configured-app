Rails.application.routes.draw do
  devise_for :users
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  get 'up' => 'rails/health#show', as: :rails_health_check
end
