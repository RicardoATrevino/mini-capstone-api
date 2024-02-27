# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.create(name: "Instant Espresso", price: "5", image_url: "htt
ps://target.scene7.com/is/image/Target/GUEST_1eabf89f-651a-40cc-89e3-365cb8e3f6b
3?wid=488&hei=488&fmt=pjpeg", description: "dehydrated espresso, mix with hot wat
er for instant espresso")
Product.create(name: "Coffee", price: "1", image_url: "https://nypost.com/wp-content/uploads/sites/2/2023/01/coffee.jpg", description: "coffee made to order!")
Product.create(name: "Criossant", price: "2", image_url: "https://www.theflavorbender.com/wp-content/uploads/2020/05/French-Croissants-SM-2363.jpg", description: "Soft, warm, and chewy Croissant")
