class SetDefaultOnIngredientQuantityType < ActiveRecord::Migration
  def change
    change_column :ingredients, :quantity_type, :integer, default: 0
  end
end
