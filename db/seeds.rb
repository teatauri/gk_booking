# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(password: "12345")

Status.create(state: "pending")
Status.create(state: "accepted")


Booking.create(admin_id: 1, start_date: Time.now, end_date: Time.now, description: "Wedding", budget: 1000, guests: 100, email: "lee@lee.com", phone_number: "12345678910", status_id: 1  )
Booking.create(admin_id: 1, start_date: Time.now, end_date: Time.now, description: "Disco", budget: 2000, guests: 200, email: "lee@otherlee.com", phone_number: "12345978910", status_id: 2 )

MenuItem.create(img_url: "http:food1.com", description: "A lovely green curry", name: "green curry")
MenuItem.create(img_url: "http:food2.com", description: "A lovely red curry", name: "red curry")
MenuItem.create(img_url: "http:food3.com", description: "A lovely massaman curry", name: "massaman curry")

BookingItem.create(menu_item_id: 1, booking_id: 1)
BookingItem.create(menu_item_id: 2, booking_id: 1)
BookingItem.create(menu_item_id: 3, booking_id: 2)
