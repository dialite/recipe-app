Rails.application.routes.draw do
 
  get 'recipes/index'
  devise_for :users

  root 'recipes#index'

  resources :foods, only: %i[index show new create destroy]
  resources :recipes, only: %i[index show new create destroy] do
     resources :recipe_foods, only: %i[new create destroy]
  end

  resources :public_recipes, only: %i[index]
  resources :foods, only: %i[index new create destroy]
  resources :recipes, only: %i[index show new create edit update destroy]
  
  
  resources :recipes, only: %i[index show new create destroy] do
    resources :recipefoods, only: %i[new create destroy update edit]
   
  end
end