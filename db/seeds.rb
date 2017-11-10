# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create([
	{cname: "Roti Modern Mediterranean", address: "100 Maiden Ln, New York, NY 10038", number: "(646) 494-3359", image: open("https://media.timeout.com/images/100905081/1024/576/image.jpg"), menu_item_id: 1, email: "roti@gmail.com", password: "password"},
	{cname: "GRK Fresh Greek", address: "111 Fulton St, New York, NY 10038", number: "(212) 385-2010", image: open("https://media-cdn.tripadvisor.com/media/photo-s/04/5e/3a/c9/street-view.jpg"), menu_item_id: 2, email: "grk@gmail.com", password: "password"}
])

MenuItem.create ([
	{restaurant_id: 1},
	{restaurant_id: 2}
])

Item.create ([
	{item: "Chicken Kabob", price: 9, starting_range: 4, ending_range: 6, description: "Char-grilled antibiotic-free chicken breast.", menu_item_id: 1, category: 0},
	{item: "Rice Plate", price: 10, starting_range: 5, ending_range: 7, description: "Non GMO basmati and wild rice blend.", menu_item_id: 1, category: 1},
	{item: "Chocolate Chip Cookies", price: 4, starting_range: 2, ending_range: 3, description: "House-baked chocolate chip cookies.", menu_item_id: 1, category: 2},
	{item: "Juice", price: 3, starting_range: 1, ending_range: 2, description: "Any size fountain juice.", menu_item_id: 1, category: 3},
	{item: "Tzatziki Sampler", price: 7, starting_range: 4, ending_range: 6, description: "All three tzatziki spreads served with fresh baked pita.", menu_item_id: 2, category: 0},
	{item: "Greek Salad", price: 9, starting_range: 5, ending_range: 7, description: "Vine ripened tomatoes, red onions, green peppers, cucumbers and kalamata olives. tossed lightly with extra virgin olive oil, kalamata vinegar and garnished with authentic greek feta cheese.", menu_item_id: 2, category: 1},
	{item: "Frozen Grk Ygrt", price: 6, starting_range: 3, ending_range: 5, description: "Imported from greece. Toppings: granola, honey, walnuts, flax seeds, almonds, strawberries, blueberries, blackberries, mango, pineapple, cranberries, figs, fig preserves, black cherry preserves, rose petal preserves, sweet cherry preserves.", menu_item_id: 2, category: 2},
	{item: "Sparkling Water", price: 3, starting_range: 1, ending_range: 2, description: "Bottled sparkling water.", menu_item_id: 2, category: 3}
])

Discount.create ([
	{time_frame: 60, description: "All kabobs and falafels: buy one get one free", restaurant_id: 1},
	{time_frame: 60, description: "All salads and yogurt: half price", restaurant_id: 1}
])

User.create ([
	{fname: "Jaquelyn", lname: "Morris", status: "customer", email: "jackie@gmail.com", password: "password"},
	{fname: "Administrator", lname: "Access", status: "administrator", email: "admin@gmail.com", password: "password"}
])

PickUp.create ([
	{status: 0, restaurant_id: 1},
	{status: 0, restaurant_id: 2}
])