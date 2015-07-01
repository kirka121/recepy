class RecepyBelongsToCategory < ActiveRecord::Migration
  def change
    remove_column :recepies, :ingredients
    add_column :recepies, :category_id, :integer, index: true
  end
end
