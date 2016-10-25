# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

users = alphabet.map do |letter|
  User.create(username: letter, password: letter, password_confirmation: letter)
end

post_texts = ["It's raining", "Omfg tech news here", "Ty is awesome"]

30.times do |i|
  Post.create(title: 'TITLE HERE', content: post_texts.sample, user: users.sample)
end
