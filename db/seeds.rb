# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create! email: 'test@example.com',
             password: 'Test1234',
             password_confirmation: 'Test1234',
             role: 0

User.create! email: 'moderator@example.com',
             password: 'Moderator1234',
             password_confirmation: 'Moderator1234',
             role: 1

User.create!  email: 'admin@example.com',
              password: 'Admin1234',
              password_confirmation: 'Admin1234',
              role: 2

Journal.create! title: 'Scientists checking nomenclature',
                editor: 'Josh',
                description: 'Journal deals with categories of naming',
                impact_factor: 5,
                approved: true,
                user_id: 1

Journal.create! title: 'Graduate students easy submission process',
                editor: 'Megan',
                description: 'Accepts all articles. Such easy',
                impact_factor: 1,
                approved: false,
                user_id: 1

Journal.create! title: 'Klatuu Barata Nickto',
                editor: 'Ash',
                description: 'Hail to the king baby',
                impact_factor: 15,
                approved: true,
                user_id: 2

Methodology.create! name: 'CBT'
Methodology.create! name: 'Emotional Focussed'
Methodology.create! name: 'EMDR'
