require 'faker'

20.times do
  Post.create(title: Faker::Company.bs, content: Faker::Lorem.sentences(2), url: Faker::Internet.url)
end

20.times do
  User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")
end

user_rand = User.all.count
post_rand = Post.all.count

post_rand.times do |index|
  rand(9).times do
    Comment.create(body: Faker::Lorem.sentence(2), post_id: index, user_id: rand(user_rand), )
  end
end