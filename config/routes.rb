Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :users
      resources :songs
      resources :bands
      resources :set_lists
    end
  end

end
