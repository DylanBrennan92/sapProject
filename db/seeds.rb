#using Faker gem to generate 80 staff members and 20 managers

User.destroy_all
p "Destroyed all User records from development db"


User.create!(email: "admin@gmail.com", name:"dylan_admin", role: "admin", password:"1234")
p "Created 1 user with role of admin"

40.times do |index|
    User.create!(email: Faker::Internet.free_email[5..12],
        name: Faker::Name.name[5..12],
        password: Faker::Internet.password(min_length: 8),
        role: "staff"

    )
end

5.times do |index|
    User.create!(email: Faker::Internet.free_email,
        name: Faker::Name.name,
        password: Faker::Internet.password(min_length: 8),
        role: "manager"

    )
end

p "Created #{User.count} users"