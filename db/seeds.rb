# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# this will remvoe any older products that were previously loaded


# PREVIOUSLY LOADED SEED

# Product.destroy_all
#
# #the ! in .create! will put an error message
# Product.create!(
#   name: 'Razr Mouse',
#   description: "best ma'facka in town",
#   price: 4999
# )
#
# Product.create!(
#   name: 'Adult diapers',
#   description: "When you see dat bear running at you and you shit your pants",
#   price: 3025
# )
#
# Product.create!(
#   name: 'Colgate Whitening Strips',
#   description: 'get noticed when the lights go out with your smile',
#   price: 199
# )
#
# Product.create!(
#   name: "Porcelane Coffee cup",
#   description: "Tired of burning my fingerprint off and not able to unlock my i-phone",
#   price: 799
# )

Review.destroy_all

Review.create!(
  comment: "Takes a heavy load, A++++++++",
  product_id: 6
)

Review.create!(
  comment: "got the wrong side and had a mud slide",
  product_id: 6
)

Review.create!(
  comment: "False advertising, i tried to shave with this and it stopped working",
  product_id: 5
)

Review.create!(
  comment: "Works great, but blinded myself at night in the bathroom, now i have 30 stitches to show for it",
  product_id: 7
)

Review.create!(
  comment: "I can finally use my phone !!!! A+++B----C-",
  product_id: 8
)
