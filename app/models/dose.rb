class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  # validates_uniqueness_of :dose_id, :scope => [:cocktail_id, :ingredient_id]
end
