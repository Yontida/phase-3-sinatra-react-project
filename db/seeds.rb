puts "🌱 Seeding..."

# Seed your database here

# Clearing Our Tables!
puts "Clearing Our Tables..."

User.destroy_all

#### User Seeds

user1 = User.create(

  name: "Yontida",
  image_url: "https://static.vecteezy.com/system/resources/previews/001/936/414/original/professional-girl-chef-with-ladle-in-hands-bakery-cartoon-art-illustration-vector.jpg"
)
user2 = User.create(

  name: "Lois",
  image_url: "https://i.pinimg.com/736x/c7/14/a9/c714a92e617e786c9ac63953fc2f42ba.jpg"
)
user3 = User.create(

  name: "Daniel",
  image_url: "https://image.shutterstock.com/image-vector/cute-male-chef-logo-holding-260nw-1920242285.jpg"
)

##############

puts "✅ Done seeding!"
