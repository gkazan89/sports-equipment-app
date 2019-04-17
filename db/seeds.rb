# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(supplier_id: 2, name: "Tennis Racquet", sport: "Tennis", price: 200)
Item.create(supplier_id: 1, name: "Hockey Stick", sport: "Hockey", price: 150)
Item.create(supplier_id: 2, name: "Golf Club", sport: "Golf", price: 300)
Item.create(supplier_id: 1, name: "Basketball", sport: "Basketball", price: 30)
Item.create(supplier_id: 2, name: "Baseball", sport: "Baseball", price: 10)
Item.create(supplier_id: 1, name: "Football Helmet", sport: "Football", price: 100)
Item.create(supplier_id: 2, name: "Baseball Glove", sport: "Baseball", price: 80)
Item.create(supplier_id: 1, name: "Soccer Ball", sport: "Soccer", price: 40)
Item.create(supplier_id: 1, name: "Baseball Bat", sport: "Baseball", price: 250)


Supplier.create(name: "Nike")
Supplier.create(name: "Adidas")

Image.create(url: "https://5.imimg.com/data5/TJ/YK/MY-38255385/vxt1040-500x500.jpg", item_id: 1)
Image.create(url: "https://media.istockphoto.com/vectors/ice-hockey-stick-vector-id501648383?k=6&m=501648383&s=612x612&w=0&h=KQjTYckscVjNlXsmDGw5IJNXrnC5l9JzZl2kJbdN5SE=", item_id: 2)
Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHtBmGHmmIDr2ITLAbtbsAi93mJ4gidlVhGODu1a93kjX-tP0HNA", item_id: 3)
Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRANhT_q0gperXzjET6AqvLN4tc7av3n9l69DNvjweqqlpOngpqmA", item_id: 4)
Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEUayVoPDJgDMoEiOPANPuL3qop_O9_vhbHPHkLJ5qM-tNnFQCDw", item_id: 5)
Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN1f0tVI6FoV4wRzE-b7ea2M5mGKYfj-uEpYmOEjweF88VsbUy", item_id: 6)
Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLUFku20jjqrb8uWyrwlQLnW4zS-mmL2EZnqKPxhTR-8KyA_IX", item_id: 7)
Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFUYEvf8tN7bUlQdonX2usYzqUYTE6QjNTkxS_cTD-4aT0pR88Vg", item_id: 8)
Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH4U5ImnBznaCcnTpCmxvamUP2mNnEoTrjkOWFy0W4pJX3rgT_", item_id: 9)