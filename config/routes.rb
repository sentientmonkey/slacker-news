SlackerNews::Application.routes.draw do
  resources :comments
  resources :posts
  resources :authors

  namespace :api, defaults: {format: "json"} do
    resources :posts, only: [:index, :show, :create, :update, :destroy] do
      resources :comments, only: [:index, :show, :create, :update, :destroy]
    end
    resources :authors, only: [:index, :show, :create, :update, :destroy]
  end

end
