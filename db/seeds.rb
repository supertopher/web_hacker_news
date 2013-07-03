require 'faker'

20.times do
  Post.create(title: Faker::Company.bs, content: Faker::Lorem.sentences(4), url: Faker::Internet.url)
end