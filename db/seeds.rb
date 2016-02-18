# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Jane = User.new(name: "Jane", email:"Jane@gmail.com")
Bobby = User.new(name: "Bobby", email:"bobby@hotmail.com")
Joe = User.new(name: "Joe", email:"Joe@gmail.com")
Nizar = User.new(name: "Nizar", email:"Nizar@yahoo.com")


user.products.create(title:"Oven" , description:"hot, hot, hot, hot", deadline: date.now+1)
user.products.create(title:"Toaster" , description:"toast, toast, toast, toast", deadline: date.now+1)
user.products.create(title:"Dishwasher" , description:"wash, wash, wash, wash", deadline: date.now+1)
user.products.create(title:"Dryer" , description:"dry, dry, dry, dry", deadline: date.now+1)
user.products.create(title:"" , description:"hot, hot, hot, hot", deadline: date.now+1)