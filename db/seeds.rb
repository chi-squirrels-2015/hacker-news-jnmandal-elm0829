require 'faker'

10.times do
  User.create!(name: Faker::Internet.user_name, password: "password", password_confirmation: "password", about: Faker::Lorem.paragraph)
end

users = User.all

20.times do
  Post.create!(title: Faker::Lorem.sentence, link: Faker::Internet.url, user: users.sample)
end

posts = Post.all

100.times do
  Comment.create!(body: Faker::Lorem.paragraph, user: users.sample, post: posts.sample)
end

comments = Comment.all

posts.each do |post|
  rand(100).times {Vote.create!(user: users.sample, post: post)}
end

comments.each do |comment|
  rand(20).times {Vote.create!(user: users.sample, comment: comment)}
end

User.create!(name: "jnmandal", password: "password", password_confirmation: "password")
User.create!(name: "elm0829", password: "password", password_confirmation: "password")
