class PublicRecipesController < ApplicationController
  def index
    @all_public_recipes = Recipe.where(public: true).order(created_at: :desc)
  end

  def show; end
end
