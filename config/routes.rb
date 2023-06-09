Rails.application.routes.draw do
 
  get 'recipes/index'
  devise_for :users

  root 'recipes#index'
resources :users
  resources :foods, only: %i[index show new create destroy]
  resources :recipes, only: %i[index edit show new create destroy] do
     resources :recipe_foods, only: %i[new create edit destroy]
  end

  resources :public_recipes, only: %i[index]
  resources :foods, only: %i[index new create destroy]
  resources :recipes, only: %i[index show new create edit update destroy] do
    resources :recipe_foods, only: %i[index new edit show create destroy]
 end
  
  
  resources :recipes, only: %i[index show new edit create destroy] do
    resources :recipe_foods, only: %i[index new show edit create destroy update edit]
  end

  get '/recipe_foods', to: 'recipe_foods#index'
end