# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |t|
  Product.create(title:"title#{t}",
                  description:
                   %{
                   <h1> description of #{t}  </h1>},
                  image_url: "#{t}.jpeg",
                  price: 100.456)
end