puts "Seeding students..."

50.times do
    Student.create(
        name: Faker::Name.name,
        admission_no: rand(1..50),
        course: Faker::Game.genre
    )
end
puts "Done seeding!"