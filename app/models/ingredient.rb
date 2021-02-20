class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  belongs_to :cocktail
end
