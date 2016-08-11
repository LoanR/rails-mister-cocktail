class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: { message: "Add a cocktail name"}
  validates :name, uniqueness: true

end
