# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.new(:name => 'awesome_admin', :email => 'good@example.com' ).save
User.new(:name => 'Regular user', :email => 'evil@example.com' ).save

Post.new(:text => 'some stuff about rails', :user_id => User.first.id)
Post.new(:text => 'nything else', :user_id => User.first.id)
Post.new(:text => 'tic', :user_id => User.last.id)
