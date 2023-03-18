require 'rails_helper'

RSpec.describe 'PublicRecipe', type: :request do
  describe 'index page' do
    before :each do
      @nice_recipe = Recipe.create(name: 'recipe1', preparation_time: '1,5 hours', cooking_time: '40',
                                   description: 'fast food', public: true)
    end

    feature 'Testing recipes index page' do
      background { visit public_recipes_path }


      scenario 'I can see the app title' do
        expect(page).to have_content('Recipes')
      end

      scenario 'I can see the sign out button' do
        expect(page).to have_content('Sign')
      end
    end
  end
end
