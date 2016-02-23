# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


params = [
	{ id: 1, title: 'first update', article: 'any thing'},
	{ id: 2, title: 'second', article: 'other thing' }
]

params.each do |param|
	paper = Paper.find_or_initialize_by id: param[:id]
	paper.update param.except(:id)
end
