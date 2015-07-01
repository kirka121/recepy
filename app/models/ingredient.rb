class Ingredient < ActiveRecord::Base

  belongs_to :recepy

  enum quantity_type: [ :milligram, :gram, :kilogram, :pound, :ounce, :millileter, :leter, :teaspoon, :tablespoon, :cup]
end
