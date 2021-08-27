# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = [
    {
        name: 'Felix',
        age: 2,
        enjoys: 'Long naps on the counch, and a warm fire'

    },
    {
        name: 'Garfield',
        age: 6,
        enjoys: 'Lounging, eating lasgana, hauning the multiverse'
    },
    {
        name: 'Jake',
        age: 1,
        enjoys: 'Hanging off of floating doors'
    }

]

cats.each do |attributes|
    Cat.create attributes
    puts "creating cat #{attributes}"
end