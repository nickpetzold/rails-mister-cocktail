class Dose < ApplicationRecord
  validates :description, presence: true
  validates :ingredient_id, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
  belongs_to :ingredient
  belongs_to :cocktail

  def to_s
    "#{Ingredient.find(ingredient_id).name} - #{description}"
  end
end
