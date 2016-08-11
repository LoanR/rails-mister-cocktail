class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: { message: "Add a description"}
  validates :ingredient, uniqueness: { scope: :cocktail }

end
