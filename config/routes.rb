RailsApiExample::Application.routes.draw do
  resources :comments
  resources :links
  resources :authors

  namespace :api, defaults: {format: "json"} do
    resources :links, only: [:index, :show, :create, :update, :destroy]
  end

end
