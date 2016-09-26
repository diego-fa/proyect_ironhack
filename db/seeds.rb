# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
paul, alia, leto = User.create([
 {name: 'Paul Atreides', email: 'paul@arrakis.com', telephone:'111111' ,password:
'ironhack', password_confirmation: 'ironhack'},
 {name: 'Alia Atreides', email: 'alia@arrakis.com', telephone:'222222' , password:
'ironhack', password_confirmation: 'ironhack'},
 {name: 'Leto Atreides', email: 'leto@arrakis.com', telephone:'333333' , password:
'ironhack', password_confirmation: 'ironhack'},
 {name: 'diego', email: 'diegofa1989@gmail.com', telephone:'444444' , password:
'111111', password_confirmation: '111111'}
])

estate = Estate.create([
{size: '5 hectareas', description: 'una finca muy grande', price: 11 , 
longitude:'111111' ,latitude:'2222222',user_id: 1 },
{size: '30 hectareas', description: 'una finca muy muy pero que muy grande', price: 11 , 
longitude:'111111' ,latitude:'2222222',user_id: 4 }
])