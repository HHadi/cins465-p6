# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

doi = Doi.create([{name: "my first doi dddd", description: "hello ddd"},
				  {name: "my second doi dddd", description: "this is the second doi"}])

url = Url.create([{url: "first url"},
				  {url: "second url"}])