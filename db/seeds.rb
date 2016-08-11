# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alcohols = %w(beer rum vodka gin tequila brandy bourbon whiskey scotch cognac)
softs = %w(tonic tomato-juice orange-juice coke sparkling-water pineapple-juice cocoa-milk sirup)
toppings = %w(ice sugar mint-leaves egg-white olives cherries lemon tabasco worcestershire)

alcohols.each do |name|
  Ingredient.create(name: name)
end
softs.each do |name|
  Ingredient.create(name: name)
end
toppings.each do |name|
  Ingredient.create(name: name)
end

cocktails = %w(Hercules Equinox Blue-vegetables Snail-race Ulanbator Purple-hill Moonrise Retroproject)

cocktails.each do |name|
  Cocktail.create(name: name)
end

Cocktail.all.each do |c|
  Dose.create(ingredient: Ingredient.where(name: alcohols.sample).first, cocktail: c, description: (["8", "12", "50", "5", "4"].sample + "cl"))
  Dose.create(ingredient: Ingredient.where(name: softs.sample).first, cocktail: c, description: (["1", "2", "10", "8", "100"].sample + "cl"))
  Dose.create(ingredient: Ingredient.where(name: toppings.sample).first, cocktail: c, description: (["some ", "a bit of", "100g", "15 pieces of", "many"].sample))
end
