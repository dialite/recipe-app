class Recipe < ApplicationRecord
  belongs_to :user, class_name: 'User', dependent: :destroy
  has_many :recipe_foods, class_name: 'RecipeFood', foreign_key: 'recipe_id'

  validates :name, presence: true, length: { maximum: 50 }
  validates :preparation_time, presence: true, length: { maximum: 50 }
  validates :cooking_time, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 50 }

  validates :public, inclusion: { in: [true, false] }

  def getfoods(id)
    food_list = []
    recipe_foods = RecipeFood.where(recipe_id: id)

    recipe_foods.each do |foods|
      Food.where(id: foods.food_id).each do |food|
        food_list.push(food)
      end
    end
    food_list
  end

  def total_price(food_list)
    total = 0
    food_list.each do |food|
      RecipeFood.where(food_id: food.id).each do |recipe_food|
        @single_food_price = food.price * recipe_food.quantity
      end
      total += @single_food_price
    end
    total
  end
end
