puts "🌱 Seeding spices..."

#  Seed your database here
puts "🌱 Seedie seeding seeds..."

 30.times do
     Book.create(
      title: Faker::Book.title,
      genre: Faker::Book.genre,
      price: Faker::Number.number(digits: 3),
      author_id: rand(1..10),
        customer_id: rand(1..15)
     )
 end

 10.times do 
     Author.create(
        name: Faker::Name.name
     )
 end

 15.times do
     Customer.create(
       name: Faker::Name.first_name
     )
 end




puts "✅ Done seeding!"


puts "✅ Done seeding!"
