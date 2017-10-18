# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: 'Razr Mouse',
  description: "best ma'facka in town",
  price: 4999
)

Product.create(
  name: 'Adult diapers',
  description: "When you see dat bear running at you and you shit your pants",
  price: 3025
)

Product.create(
  name: 'Colgate Whitening Strips',
  description: 'get noticed when the lights go out with your smile',
  price: 199
)

Product.create(
  name: "Porcelane Coffee cup",
  description: "Tired of burning my fingerprint off and not able to unlock my i-phone",
  price: 799
)
