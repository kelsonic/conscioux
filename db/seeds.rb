post_topics = ['Yoga', 'Restaurant', 'Shop', 'Diet', 'Workout', 'Bar']

# CREATE MAKEUP CATEGORY AND PRODUCTS
category = Category.create!(name: 'Makeup')

# Product Name
category.products.create!(
	name: 'Timide',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/bronzer.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Super Mascara',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/mascara1.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Lushy Lashes',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/mascara2.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Crazy Lashes',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/mascara3.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'True Rouge',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/blush.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Kissy Lips',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/lipgloss.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Red Romance',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/lipstick.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Kusjes',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/lipstick2.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Flawless',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/foundation.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Natural Look',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/foundation2.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Au Naturelle',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/makeup/foundation3.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)


# CREATE BATH & BODY CATEGORY AND PRODUCTS
category = Category.create!(name: 'Body and Bath')
# Product Name
category.products.create!(
	name: 'De Bain',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/bathball.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Badzout',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/bathsalt.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

category.products.create!(
	name: 'White Pleasure',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/body.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

category.products.create!(
	name: 'Badspulletje',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/bathsalt2.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

category.products.create!(
	name: 'Creme Deluxe',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/cream.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

category.products.create!(
	name: 'Corporel',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/cream2.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

category.products.create!(
	name: 'Youth Restorer',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/cream3.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)


category.products.create!(
	name: 'Reinvigoration',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/cream4.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)


category.products.create!(
	name: 'Creme du Jour',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/bodybath/test-eco-image.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# CREATE BATH & BODY CATEGORY AND PRODUCTS
category = Category.create!(name: 'Hair')
# Product Name
category.products.create!(
	name: 'Après-Shampooing',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/conditioner.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Volumizer',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/Conditioner1.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Lush Hair',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/conditioner4.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Super Hair Oil',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/hairoil.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Tropical Oil',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/hairoil2.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Fountain of Hair Youth',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/hairoil3.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'So Fresh So Clean',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/shampoo.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)


# Product Name
category.products.create!(
	name: 'Fresh Prince',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/shampoo2.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)

# Product Name
category.products.create!(
	name: 'Handmade Shampoo',
	brand: Faker::Company.name,
	gender: 'Female',
	website: Faker::Internet.url,
	image: 'seed_images/products/hair/shampoo3.jpg',
	price: rand(19.99..50).round(2).to_s,
	quantity: "#{rand(25..150)}ml"
)
# END CATEGORIES


# CREATE USERS, POSTS, AND REVIEWS
user = User.create!(
	email: 'changethisemail@example.com',
	password: 'changethispassword123'
)

profile = Profile.create!(
	first_name: 'Sandra',
	last_name: 'Adams-Hallie',
	country: 'Netherlands',
	city: 'Soest',
	bio: 'A full stack web developer who is keen on making a difference.',
	image: 'silsan.png'
)

user.profile = profile

user.posts.create!(
	title: "Should be on your bucket list!!",
	topic: "Farmers Market",
	city: Faker::Address.city,
	country: Faker::Address.country,
	body: ("<p>#{Faker::Lorem.paragraph(20)}</p>" * 5),
	takeaways: ("<p>#{Faker::Lorem.paragraph(1)}</p>" * 1),
	interviewed_people: '#{Faker::Pokemon.name}',
	image: 'seed_images/posts/post1-compressor.jpeg',
	video: 'https://www.youtube.com/watch?v=XMOuVve3Aqg'
)

user.posts.create!(
	title: "Luxury Vegan Restaurant",
	topic: "Restaurant",
	city: Faker::Address.city,
	country: Faker::Address.country,
	body: ("<p>#{Faker::Lorem.paragraph(20)}</p>" * 5),
	takeaways: ("<p>#{Faker::Lorem.paragraph(1)}</p>" * 1),
	interviewed_people: '#{Faker::Pokemon.name}',
	image: 'seed_images/posts/post2-compressor.jpeg',
	video: 'https://www.youtube.com/watch?v=XMOuVve3Aqg'
)

user.posts.create!(
	title: "Yoga in Paradise!",
	topic: "Yoga",
	city: Faker::Address.city,
	country: Faker::Address.country,
	body: ("<p>#{Faker::Lorem.paragraph(20)}</p>" * 5),
	takeaways: ("<p>#{Faker::Lorem.paragraph(1)}</p>" * 1),
	interviewed_people: '#{Faker::Pokemon.name}',
	image: 'seed_images/posts/post3-compressor.jpeg',
	video: 'https://www.youtube.com/watch?v=XMOuVve3Aqg'
)

user.posts.create!(
	title: "Exclusive Festivals",
	topic: "Festivals",
	city: Faker::Address.city,
	country: Faker::Address.country,
	body: ("<p>#{Faker::Lorem.paragraph(20)}</p>" * 5),
	takeaways: ("<p>#{Faker::Lorem.paragraph(1)}</p>" * 1),
	interviewed_people: '#{Faker::Pokemon.name}',
	image: 'seed_images/posts/post4-compressor.jpeg',
	video: 'https://www.youtube.com/watch?v=XMOuVve3Aqg'
)

Product.all.each do |product|
	user.reviews.create!(
		product_id: product.id,
		title: "#{product.name} is incredible!",
		body: ("<p>#{Faker::Lorem.paragraph(15)}</p>" * 5),
		rating: rand(0..5),
		store: Faker::Company.name,
		city: Faker::Address.city,
		country: Faker::Address.country,
		image: product.image,
		video: 'https://www.youtube.com/watch?v=XMOuVve3Aqg'
	)
end
# END USERS