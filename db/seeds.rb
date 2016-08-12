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


ingredients1 = [
'Angostura Bitter',
'Bacardi Superior Rum',
'Banana',
'Beer',
'Bitter Lemon',
'Blackcurrant Cordial',
'Blackcurrant Juice',
'Brandy',
'Brown Sugar',
'Butter',
'Champagne',
'Chocolate',
'Cider',
'Cinnamon',
'Cocoa Powder',
'Coffee',
'Cointreau',
'Coke',
'Cranberry Juice',
'Cream',
'Dark Rum',
'Diet Coke',
'Double Cream',
'Egg white',
'Gin',
'Ginger Ale',
'Grenadine',
'Honey',
'Hot Chocolate',
'Lemon',
'Lemon Juice',
'Lemonade',
'Lime',
'Lime Juice',
'Marmalade',
'Milk',
'Nutmeg',
'Orange Juice',
'Pepper',
'Red Wine',
'Rum',
'Salt',
'Sherry Sweet',
'Soda Water',
'Sparkling Water',
'Sugar',
'Sugar Syrup',
'Sweet Vermouth',
'Tabasco Sauce',
'Tequila',
'Tonic Water',
'Triple Sec',
'Vermouth',
'Vodka',
'Whisky',
'White Rum',
'White Wine',
'Worcestershire Sauce'
]

ingredients1.each { |ingredient| Ingredient.create(name: ingredient) }


cocktails1 = [
  {
    name: "Old Fashioned",
    picture_urls: ["http://www.seriouseats.com/images/2014/11/20141104-cocktail-party-old-fashioneds-holiday-vicky-wasik-3.jpg"
    ]},
  {
    name: "Daiquiri",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-daiquiri.jpg"
    ]},
  {
    name: "Margarita",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-margarita.jpg"
    ]},
  {
    name: "Sidecar",
    picture_urls: ["http://www.seriouseats.com/images/2014/11/20141101-cognac-sidecar-carey-jones.jpg"
    ]},
  {
    name: "French 75",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-french75.jpg"
    ]},
  {
    name: "Bloody Mary",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/twase-20150320-21.jpg"
    ]},
  {
    name: "Irish Coffee",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-irish-coffee.jpg"
    ]},
  {
    name: "Jack Rose",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-jack-rose.jpg"
    ]},
  {
    name: "Negroni",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-negroni.jpg"
    ]},
  {
    name: "Boulevardier",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-boulevardier.jpg"
    ]},
  {
    name: "Sazerac",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-sazerac.jpg"
    ]},
  {
    name: "Vieux Carré",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-vieux-carre.jpg"
    ]},
  {
    name: "Ramos Gin Fizz",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-robyn-lee-ramos-gin-fizz.jpg"
    ]},
  {
    name: "Mint Julep",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-mint-julep.jpg"
    ]},
  {
    name: "Whiskey Sour",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-whiskey-sour.jpg"
    ]},
  {
    name: "Mai Tai",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-mai-tai.jpg"
    ]},
  {
    name: "Planter's Punch",
    picture_urls: ["http://www.seriouseats.com/images/2015/04/20150406-cocktails-planters-punch-robyn-lee-1.jpg"
    ]},
  {
    name: "Pisco Sour",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-pisco-sour.jpg"
    ]},
  {
    name: "Cosmopolitan",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-cosmopolitan.jpg"
    ]},
  {
    name: "Tom Collins",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-tom-collins.jpg"
    ]},
  {
    name: "Last Word",
    picture_urls: ["http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-last-word.jpg"
  ]}
]

cocktails1.each { |cocktail| Cocktail.create(cocktail) }
