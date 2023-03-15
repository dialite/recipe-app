class AddRecipeRefToRecipeFood < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_foods, :recipe_id, :integer
    add_index :recipe_foods, :recipe_id
    add_foreign_key :recipe_foods, :recipes, column: :recipe_id
  end
end
