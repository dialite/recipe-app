class AddFoodRefToRecipeFood < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_foods, :food_id, :integer
    add_index :recipe_foods, :food_id
    add_foreign_key :recipe_foods, :foods, column: :food_id
  end
end
