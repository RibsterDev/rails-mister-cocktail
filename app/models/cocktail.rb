class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true

  def image_url
    Unsplash::Photo.search(name)[0]['urls']['regular']
  end
end
