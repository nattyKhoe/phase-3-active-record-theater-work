require 'faker'

puts "seeding ..."

10.times do
    role = Role.create(
        character_name: Faker::Name.name
    )

    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Address.city,
        phone: Faker::PhoneNumber.phone_number,
        hired: Faker::Boolean.boolean(true_ratio: 0.1),
        role: role
    )
end