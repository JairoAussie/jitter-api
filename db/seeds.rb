# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Message.count == 0
    Message.create(text: "so use to manually setting it all up haha")
    Message.create(text: "This is scaffolding magic?")
    Message.create(text: "A bit rusty with rails now but why are they not explicitly displayed in the routes file?")
end


