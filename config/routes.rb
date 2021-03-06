Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults:{format: :json},
                  constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1 do
      # We are going to list our resources here
      resources :playlists, :only =>[:get, :post]
    end
  end
end
