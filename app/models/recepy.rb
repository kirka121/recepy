class Recepy < ActiveRecord::Base

  has_many :ingredients
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  belongs_to :category
end
