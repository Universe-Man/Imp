Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shows, only: [:index, :create, :show]
      resources :teams, only: [:index, :create, :show]
      resources :users, only: [:index, :create, :show]
      # get 'shows/index'
      # get 'shows/create'
      # get 'shows/show'
      # get 'team/index'
      # get 'team/create'
      # get 'team/show'
      # get 'user/:id/teams/'
      # get 'user/create'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
