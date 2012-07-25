# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.new(:name => 'awesome_admin', :email => 'good@example.com' ).save
User.new(:name => 'Regular user', :email => 'evil@example.com' ).save
User.new(:name => 'rails', :email => 'some@nthing.com').save


Post.new(:text => 'some stuff about rails', :user_id => User.first.id).save
Post.new(:text => 'anything else', :user_id => User.first.id).save
Post.new(:text => 'some funny text about rails gem', :user_id => User.last.id).save
Post.new(:text=> 'some other info about rails', :user_id => 1).save
