# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = []
products << Product.create(name: 'iPhone', price: 200.0)
products << Product.create(name: 'iPad', price: 400.0)
products << Product.create(name: 'iPod', price: 49.99)
products << Product.create(name: 'Headphones', price: 19.99)
products << Product.create(name: 'Mouse', price: 29.99)
products << Product.create(name: 'Sunglasses', price: 89.99)
products << Product.create(name: 'MacBook Air', price: 1500.0)
products << Product.create(name: 'Nalgene', price: 10.0)
products << Product.create(name: 'Highlighter', price: 2.0)
products << Product.create(name: 'Eraser', price: 0.5)

categories = []
categories << Category.create(name: 'Electronics')
categories << Category.create(name: 'Workout')
categories << Category.create(name: 'Education')
categories << Category.create(name: 'Accessories')
categories << Category.create(name: 'Miscellaneous')

categories[0].products << products[0]
categories[0].products << products[1]
categories[0].products << products[2]
categories[0].products << products[4]
categories[0].products << products[6]

categories[1].products << products[0]
categories[1].products << products[2]
categories[1].products << products[3]
categories[1].products << products[5]
categories[1].products << products[7]

categories[2].products << products[1]
categories[2].products << products[4]
categories[2].products << products[6]
categories[2].products << products[8]
categories[2].products << products[9]

categories[3].products << products[3]
categories[3].products << products[5]

categories[4].products << products[0]
categories[4].products << products[1]
categories[4].products << products[2]
categories[4].products << products[3]
categories[4].products << products[4]
categories[4].products << products[5]
categories[4].products << products[6]
categories[4].products << products[7]
categories[4].products << products[8]
categories[4].products << products[9]