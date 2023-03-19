require 'rails_helper'
require 'date'

RSpec.describe RecipeFoods, type: :model do
  let(:user) do
    User.create(name: 'Tmana', email: 'tamana@gmail.com', password: '123456789', password_confirmation: '123456789')
  end
  let(:food) { user.foods.create(name: 'Pasta', measurement_unit: 'litres', price: 70, quantity: 300) }
  let(:recipe) do
    user.recipes.create(name: 'Vegetables', preparation_time: 20, cooking_time: 40, description: 'Nourisher',
                        public: true)
  end
  let(:recipe_foods) { RecipeFoods.new(recipe:, food:, quantity: 8) }

  it 'is valid when created with valid attributes' do
    expect(recipe_foods).to be_valid
  end

  it 'has the same name as the food item' do
    expect(recipe_foods.food.name).to eq(food.name)
  end

  it 'has a quantity greater than or equal to zero' do
    recipe_foods.quantity = -5
    expect(recipe_foods).to_not be_valid
  end

  it 'has a numeric quantity' do
    recipe_foods.quantity = 'One'
    expect(recipe_foods).to_not be_valid
  end

  it 'has a present quantity' do
    recipe_foods.quantity = nil
    expect(recipe_foods).to_not be_valid
  end

  it 'belongs to the recipe it was created in' do
    expect(recipe_foods.recipe.name).to eq(recipe.name)
  end
end
