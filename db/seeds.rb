puts "🌱 Seeding..."

# Seed your database here

# Clearing Our Tables!
puts "Clearing Our Tables..."

User.destroy_all
Recipe.destroy_all

#### User Seeds
puts "Creating users..."
user1 = User.create(name: "Yontida", location:"USA")
user2 = User.create(name: "Lois", location:"USA")
user3 = User.create(name: "Chaweewan", location:"Thailand")

##############

puts "Creating recipes..."
recipe1 = Recipe.create(
      recipe_name: "Cornflake Cookies",
      image_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.6435-9/134942108_3768655929821701_4975394555121839470_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=YCZYeExKgfAAX9CoMAz&_nc_ht=scontent-iad3-1.xx&oh=00_AT92p24s4vWu3PYJyVTaWwi55D-FDGyXnNOkaWSLY_PA8w&oe=61FCA82B",
      ingredient: "1 stick Unsalted butter *room temperature, 1/3 cup white sugar, 1 egg yolk, 1 teaspoon vanilla extract, 1 cup + 2 tablespoons All-purpose flour, 1/2 teaspoon salt",
      instruction: "cookie dough
      Preheat the oven to 350F
      - Cream the butter and sugar until light and fluffy (about 2 minutes)
      - Add egg yolk, mixing a little bit. Then and vanilla extract and mix until combined.
      - Add all-purpose flour and salt and mix until just combined.
      - Use an ice cream scoop to scoop the cookie dough, and then toss to fully coat with cornflake",
      user_id: 1
)


puts "✅ Done seeding!"
