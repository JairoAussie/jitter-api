# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.count == 0
    User.create(username: "jairo", email: "jairo@email.com", password: "123456", password_confirmation: "123456")
    User.create(username: "alex", email: "alex@email.com", password: "123456", password_confirmation: "123456")
end

if Message.count == 0
    Message.create(text: "so use to manually setting it all up haha", user_id: 1 )
    Message.create(text: "This is scaffolding magic?",  user_id: 2)
    Message.create(text: "A bit rusty with rails now but why are they not explicitly displayed in the routes file?",  user_id: 2)
end


