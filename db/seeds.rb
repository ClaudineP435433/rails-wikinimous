# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all the things \o/"
Article.destroy_all

pictures = [
  "https://images.unsplash.com/photo-1462237020898-bb33d2baea20?ixlib=rb-0.3.5&s=11c5a791d02979176b7abeb3063077bf&auto=format&fit=crop&w=1194&q=80"
]
puts "creating"
10.times do
  article = Article.new(
    title: Faker::Educator.course,
    content: Faker::Lorem.paragraph(2),
    picture: pictures.sample
  )
  article.save!
end
puts "the end"
