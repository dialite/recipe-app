Rails.application.routes.draw do
  devise_for :users
  # resources :foods
  # resources :recipes
  # resources :recipefoods
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'users#index'
end
