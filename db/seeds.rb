# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new
user.userid = 'root'
user.username = 'superadmin'
user.email = 'superadmin@1.com'
user.password = '123456'
user.password_confirmation = '123456'
user.role = "superadmin"
user.save!