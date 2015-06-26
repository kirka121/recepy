class CreateRecepies < ActiveRecord::Migration
  def change
    create_table :recepies do |t|
      t.string :title
      t.text :ingredients
      t.text :description

      t.timestamps null: false
    end
  end
end
