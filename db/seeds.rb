# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = Author.create([{name: "Scott Windsor", email: "swindsor@gmail.com"},
                         {name: "Anon User", email: "anon@example.com"}])

posts = Post.create([{url: "http://technicalspiders.com", description: "Great blog about software", author: authors.first, published: true, published_at: Time.now},
                    {url: "http://scottwindsor.com", description: "Scott's site", author: authors.first, published: false}])

comments = Comment.create([{post: posts.first, author: authors.last, body: "Great site!"}])
