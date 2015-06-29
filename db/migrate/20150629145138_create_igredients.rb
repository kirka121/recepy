class CreateIgredients < ActiveRecord::Migration
  def change
    create_table :igredients do |t|

      t.timestamps null: false
    end
  end
end
