class recipe_foodsController < ApplicationController
  before_action :authenticate_user!, :set_recipefood, only: %i[show edit update destroy]

  def index
    @foods = Food.includes([:food])
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipefood = @recipe.recipe_foods.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipefood = @recipe.recipe_foods.create(recipe_foods_params)
    if @recipefood.save
      flash[:notice] = 'Food created sucessfully.'
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
    @recipefood = RecipeFood.find(params[:id])
  end

  def destroy
    @recipefood = RecipeFood.find(params[:id])
    @recipefood.destroy
    flash[:success] = 'Recipe Food deleted successfully.'
    redirect_to recipe_path(@recipefood.recipe_id)
  end

  def update
    @recipe = Recipe.find_by(id: params[:recipe_id])

    respond_to do |format|
      if @recipefood.update(recipe_foods_params)
        format.html do
          redirect_to recipe_path(@recipe), notice: 'Recipe food was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @recipefood }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipefood.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_recipefood
    @recipefood = RecipeFood.find(params[:id])
  end

  def recipe_foods_params
    params.require(:recipefood).permit(:quantity, :food_id)
  end
end
