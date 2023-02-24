puts "Seeding students..."

Student.create(name: "Sam", admission_no:001, course: "software engineering")
Student.create(course:"Data science", name:"Justine", admission_no:002)
Student.create(name:"Maryann", admission_no:003, course: "UI/UX")


20.times do
    Student.create(
        name: Faker::FunnyName.name,
        admission_no: rand(1..50),
        course: Faker::ProgrammingLanguage.name,
        age: rand(1..50),
        grade: rand(1..100)
    )
end
puts "Done seeding!"