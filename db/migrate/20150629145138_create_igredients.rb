class CreateIgredients < ActiveRecord::Migration
  def change
    create_table :igredients do |t|
      t.belongs_to :recepy, index: true
      t.integer :quantity
      t.integer :quantity_type
      t.string :description

      t.timestamps null: false
    end
  end
end
