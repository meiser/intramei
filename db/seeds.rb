# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FoodPrice.create([
	{price: 3.2},
	{price: 2.7}
])

Additive.create([
	{no: 1, description: 'mit Farbstoff'},
	{no: 2, description: 'mit Konservierungsstoff'},
	{no: 3, description: 'mit Antioxidationsmittel'},
	{no: 4, description: 'mit Geschmacksverstärker'},
	{no: 5, description: 'geschwefelt'},
	{no: 6, description: 'mit Süßungsmittel'},
	{no: 7, description: 'mit Phosphat'},
	{no: 8, description: 'geschwärzt'},
	{no: 9, description: 'mit Nitritpökelsalz'},
	{no: 10, description: 'enthält eine Phenylalaninquelle'},
	{no: 11, description: 'koffeinhaltig'},
	{no: 12, description: 'chininhaltig'}
])