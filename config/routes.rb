Rails.application.routes.draw do
  devise_for :users

  get 'recipes/public_recipes'

  resources :shopping_list, only: %i[index]
  resources :foods, only: %i[index new create show destroy]
  resources :recipes, only: %i[index new create show destroy] do
    resources :recipe_foods, only: %i[new create]
  end

  resources :public_recipes, only:%i[index new create show ]
    
  # resources :recipefoods
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  # Defines the root path route ("/")
  # root "articles#index"
  root 'foods#index'
end
