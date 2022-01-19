puts "🌱 Seeding spices..."

# Seed your database here

shay= User.create(name: "Shay")
dad = User.create(name: "Dad")

shay.recipes.create(title: "Enchiladas", from: "Mom",  category:"Main Dish", notes:"Yummy!")
shay.recipes.create(title: "Nachos", from: "Friend",  category:"Side Dish", notes:"Very cheesy!")
shay.recipes.create(title: "Chocolate Cake", from: "Grammy",  category:"Dessert", notes:"The best cake ever!")
dad.recipes.create(title:"Bacon Poppers", from:"Dad", notes:"Don't bake too long", category:"Appetizer")
puts "✅ Done seeding!"
