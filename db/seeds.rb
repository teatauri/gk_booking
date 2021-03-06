# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
b = Admin.create()
b.name = "ben"
b.password = 'hello'
b.save

Status.create(state: "Pending")
Status.create(state: "Accepted")
Status.create(state: "Pending")


Booking.create(start_date: Time.now, end_date: Time.now, location: "Wedding", budget: 1000, guests: 100, email: "lee@lee.com", name: "lee1", status_id: 1  )
Booking.create(start_date: Time.now, end_date: Time.now, location: "Disco", budget: 2000, guests: 200, email: "lee@otherlee.com", name: "lee2", status_id: 2 )
Booking.create(start_date: Time.now, end_date: Time.now, location: "Party", budget: 3000, guests: 300, email: "lee@otherotherlee.com", name: "lee3", status_id: 3 )


MenuItem.create(img_url: "http:food1.com", description: "A lovely green curry", name: "green curry")
MenuItem.create(img_url: "http:food2.com", description: "A lovely red curry", name: "red curry")
MenuItem.create(img_url: "http:food3.com", description: "A lovely massaman curry", name: "massaman curry")

BookingItem.create(menu_item_id: 1, booking_id: 1)
BookingItem.create(menu_item_id: 2, booking_id: 1)
BookingItem.create(menu_item_id: 3, booking_id: 2)
