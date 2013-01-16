# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rake::Task['db:reset'].invoke

u = User.create!(email: "admin@chen.com", password: "foobar", password_confirmation: "foobar", display_name: "Admin")
u1 = User.create!(email: "yungchih@chen.com", password: "foobar", password_confirmation: "foobar", display_name: "Yungchih")

p1 = u1.posts.create!( content: 'Sample Textpost')
p2 = u1.posts.create!( content: 'http://www.example.com/example.png')
p3 = u1.posts.create!( content: 'http://www.example.com')

u2 = User.create!(email: "james@chen.com", password: "foobar", password_confirmation: "foobar", display_name: "James")
p4 = u2.posts.create!( content: 'Sample Textpost Second')
p5 = u2.posts.create!( content: 'http://www.second.com/example.png')
p6 = u2.posts.create!( content: 'http://www.second.com')

u3 = User.create!(email: "john@chen.com", password: "foobar", password_confirmation: "foobar", display_name: "John")
	20.times do |i|
		u3.posts.create!( content: "Hypothetical Joe, blathering again.")
	end