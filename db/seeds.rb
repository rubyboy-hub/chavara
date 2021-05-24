# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Role.create([{ name:'Admin'},{name:'Student'},{name:'Teacher'},{name:'Paernt'}])

# User.create([{ email:'shanjoys@gmail.com',encrypted_password:'123456',name:'shanjoy',age:'25',role_id:'2'}])
# user = User.create! :email => 'shanjoys@gmail.com', :password => '123456', :password_confirmation => '123456', :role_id => '2', :name => 'shanjoy', :age => '23'
user = User.create! :email => 'shanjoyshajan555@gmail.com', :password => '123456', :password_confirmation => '123456', :role_id => '2', :name => 'abin', :age => '16'

