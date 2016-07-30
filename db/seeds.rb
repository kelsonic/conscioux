# Config
gender = ['Male', 'Female']


# CREATE CATEGORIES AND PRODUCTS
product_images = ['Conditioner1.jpg', 'cream.jpg', 'cream2.jpg', 'cream3.jpg', 'cream4.jpg', 'lipgloss.jpg', 'mascara2.jpg', 'mascara3.jpg', 'test-eco-image.jpg']
product_names = ['Facial Cream', 'Body Lotion', 'Bath Oil', 'Shampoo', 'Hair Oil', 'Hair Spray', 'Mascara', 'Foundation', 'Concealer', 'Powder', 'Eye Shadow', 'Eyebrow Makeup', 'Conditioner', 'Lipstick', 'Lipgloss', 'Eye Liner', 'Nail Polish', 'Bronzer', 'BB Creme', 'Hand Creme', 'Body Oil']
post_topics = ['Yoga', 'Restaurant', 'Shop', 'Diet', 'Workout', 'Bar']

categories = ['Makeup', 'Hair', 'Body & Bath']

categories.each do |category|
	# Create Categories
	new_category = Category.create!(name: category)
	
	# Create 12 Products per Category
	12.times do
		new_category.products.create!(
			name: product_names.sample,
			brand: Faker::Company.name,
			gender: gender.sample,
			website: Faker::Internet.url,
			image: product_images.sample,
			price: rand(19.99..50).round(2).to_s,
			quantity: "#{rand(25..150)}ml"
		)
	end
end
# END CATEGORIES AND PRODUCTS



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
	title: "This lipstick makes you feel like #{Faker::Space.star}!",
	topic: post_topics.sample,
	city: Faker::Address.city,
	country: Faker::Address.country,
	body: ("This lipstick ensures that it won't hurt any #{Faker::Pokemon.name}s or #{Faker::Pokemon.name}s. " * 60),
	takeaways: "#{Faker::Pokemon.name}s are important, and so is lipstick.",
	interviewed_people: '#{Faker::Pokemon.name}',
	image: product_images.sample,
	video: 'https://www.youtube.com/watch?v=OIfLyMSuAMA'
)


Product.all.each do |product|
	user.reviews.create!(
		product_id: product.id,
		title: "#{product.name} is incredible!",
		body: ("Finding #{product.name} is like finding a #{Faker::Pokemon.name} in #{Faker::Pokemon.location}! #{Faker::Hacker.adjective.capitalize}! " * 60),
		rating: rand(0.0..5),
		store: Faker::Company.name,
		city: Faker::Address.city,
		country: Faker::Address.country,
		image: product_images.sample,
		video: 'https://www.youtube.com/watch?v=OIfLyMSuAMA'
	)
end
# END USERS