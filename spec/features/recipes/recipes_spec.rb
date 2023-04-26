require 'rails_helper'

RSpec.feature 'Recipes', type: :feature do
  before(:each) do
    @user = User.new(name: 'tamana', email: 'tamana.balkhi1377@gmail.com', password: '123456',
                     password_confirmation: '123456')
    @recipe = Recipe.new(name: 'Recipe1', user: @user)
  end

  it 'belongs to a user' do
    expect(@recipe.user).to eq(@user)
  end

  it 'has a name' do
    expect(@recipe.name).to eq('Recipe1')
  end

  it 'destroys the food when the recipe is destroyed' do
    @recipe.destroy
    expect(@recipe.destroyed?).to eq(true)
  end
end
