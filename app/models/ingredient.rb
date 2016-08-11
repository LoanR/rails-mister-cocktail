class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: { message: "Add a ingredient name"}
  validates :name, uniqueness: true

  before_destroy :check_for_cocktail

  private

  def check_for_cocktail
    if ingredients.detect { |ingredient| ingredient.cocktail }
      false
    end
  end

end
