# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(supplier_id: 1, name: "Baseball Bat", sport: "Baseball", price: 100)
Item.create(supplier_id: 2, name: "Tennis Racquet", sport: "Tennis", price: 200)
Item.create(supplier_id: 1, name: "Hockey Stick", sport: "Hockey", price: 150)


Supplier.create(name: "Nike")
Supplier.create(name: "Adidas")

Image.create(url: "http://spacecoastsports.com/wp-content/uploads/2014/06/sportsballs1.png", item_id: 2)
Image.create(url: "http://spacecoastsports.com/wp-content/uploads/2014/06/sportsballs1.png", item_id: 3)
Image.create(url: "http://spacecoastsports.com/wp-content/uploads/2014/06/sportsballs1.png", item_id: 4)
Image.create(url: "http://spacecoastsports.com/wp-content/uploads/2014/06/sportsballs1.png", item_id: 5)
Image.create(url: "http://spacecoastsports.com/wp-content/uploads/2014/06/sportsballs1.png", item_id: 6)