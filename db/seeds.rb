# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jigar = User.create(name: "Jigar", username: "jigar", password: "jigar")
hugo = User.create(name: "Hugo", username: "hugo", password: "hugo")
allegra = User.create(name: "Allegra", username: "allegra", password: "allegra")
marju = User.create(name: "Marju", username: "marju", password: "marju")
louis = User.create(name: "Louis", username: "louis", password: "louis")
lucy = User.create(name: "Lucy", username: "lucy", password: "lucy")
gabriel = User.create(name: "Gabriel", username: "gabriel", password: "gabriel")

london_web = Conversation.create(title: "london-web-060418")
stevenTh = Conversation.create(title: "steven-thursdays")
lunch = Conversation.create(title: "lunch")
weather = Conversation.create(title: "weather")
transformers = Conversation.create(title: "transformers")
homework = Conversation.create(title: "homework")

jigar.conversations << london_web
hugo.conversations << london_web
allegra.conversations << london_web
marju.conversations << london_web
louis.conversations << london_web
lucy.conversations << london_web
gabriel.conversations << london_web

jigar.conversations << stevenTh
hugo.conversations << stevenTh
allegra.conversations << stevenTh
marju.conversations << stevenTh
louis.conversations << stevenTh
lucy.conversations << stevenTh
gabriel.conversations << stevenTh

jigar.conversations << lunch
hugo.conversations << lunch
allegra.conversations << lunch
marju.conversations << lunch
louis.conversations << lunch
lucy.conversations << lunch
gabriel.conversations << lunch
