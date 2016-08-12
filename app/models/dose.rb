class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: { message: "Add a description" }
  validates :ingredient, presence: { message: "Choose an ingredient" }
  validates :cocktail, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }

end
