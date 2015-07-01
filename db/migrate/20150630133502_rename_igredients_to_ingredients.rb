class RenameIgredientsToIngredients < ActiveRecord::Migration
  def change
    rename_table :igredients, :ingredients
  end
end
