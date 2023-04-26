class FoodsController < ApplicationController
  before_action :authenticate_user!

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user = current_user
    if @food.save
      redirect_to foods_path,
                  notice: 'Food was added successfully.'
    else
      render :new, alert: 'Failed to add food'
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path,
                notice: 'Food was successfully destroyed.'
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
