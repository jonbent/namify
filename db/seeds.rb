# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

5.times do |i|
  User.create(uid: i, picture_url: 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2013/01/24/12/v2-cute-cat-picture.jpg', full_name: Faker::Name.unique.name, user_name: 'bobthebuilder', cohort: 'foxes')
end
