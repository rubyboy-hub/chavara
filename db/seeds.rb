# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create([{ name:'Admin'},{name:'Student'},{name:'Teacher'},{name:'Paernt'}])
standards = Standard.create([{ name: 'First' }, { name: 'Second' },{ name: 'Third' },{ name: 'Fourth' },{ name: 'Fifth' },{ name: 'Sixth' },{ name: 'Seventh' },{ name: 'Eighth' },{ name: 'Ninth' },{ name: 'Tenth' }])


# User.create([{ email:'shanjoys@gmail.com',encrypted_password:'123456',name:'shanjoy',age:'25',role_id:'2',standard_id:'4'}])
user = User.create! :email => 'shanjoys@gmail.com', :password => '123456', :password_confirmation => '123456', :role_id => '2', :name => 'shanjoy', :age => '23', :standard_id => '4'
user = User.create! :email => 'shanjoyshajan555@gmail.com', :password => '123456', :password_confirmation => '123456', :role_id => '2', :name => 'abin', :age => '16', :standard_id => '5'
subjects= Subject.create([{name:"Malayalam",standard_id:'1'},{name:"English",standard_id:'1'},{name:"Maths",standard_id:'1'},{name:"General Science",standard_id:'1'},{name:"EVS",standard_id:'1'},{name:"Malayalam",standard_id:'2'},{name:"English",standard_id:'2'},{name:"Maths",standard_id:'2'},{name:"EVS",standard_id:'2'},{name:"Social Science",standard_id:'2'},{name:"Physical Education",standard_id:'2'},{name:"Hindi",standard_id:'2'},{name:"Malayalam",standard_id:'3'},{name:"Maths",standard_id:'3'},{name:"English",standard_id:'3'},{name:"Hindi",standard_id:'3'},{name:"EVS",standard_id:'3'},{name:"Physical Education",standard_id:'3'},{name:"Malayalam",standard_id:'4'},{name:"Maths",standard_id:'4'},{name:"English",standard_id:'5'},{name:"Malayalam",standard_id:'5'},{name:"Maths",standard_id:'5'},{name:"Physical Education",standard_id:'5'},{name:"EVS",standard_id:'5'},{name:"Science",standard_id:'5'},{name:"English",standard_id:'6'},{name:"Malayalam",standard_id:'6'},{name:"Maths",standard_id:'6'},{name:"Science",standard_id:'6'},{name:"History",standard_id:'6'},{name:"Geography",standard_id:'6'},{name:"Physical Education",standard_id:'6'},{name:"English",standard_id:'7'},{name:"Malayalam",standard_id:'7'},{name:"Maths",standard_id:'7'},{name:"Science",standard_id:'7'},{name:"History",standard_id:'7'},{name:"Geography",standard_id:'7'},{name:"Physical Education",standard_id:'7'},{name:"English",standard_id:'8'},{name:"Malayalam",standard_id:'8'},{name:"Maths",standard_id:'8'},{name:"Science",standard_id:'8'},{name:"History",standard_id:'8'},{name:"Geography",standard_id:'8'},{name:"Physical Education",standard_id:'8'},{name:"English",standard_id:'9'},{name:"Malayalam",standard_id:'9'},{name:"Maths",standard_id:'9'},{name:"Science",standard_id:'9'},{name:"History",standard_id:'9'},{name:"Geography",standard_id:'9'},{name:"Physical Education",standard_id:'9'},{name:"English",standard_id:'10'},{name:"Malayalam",standard_id:'10'},{name:"Maths",standard_id:'10'},{name:"Science",standard_id:'10'},{name:"History",standard_id:'10'},{name:"Geography",standard_id:'10'},{name:"Physical Education",standard_id:'10'}])
Relationship.create([{ name:'Father'},{name:'Mother'}])
