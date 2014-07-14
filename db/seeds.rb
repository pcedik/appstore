# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Platform.create(platform: 'iOS')
p2 = Platform.create(platform: 'Android')
p3 = Platform.create(platform: 'Windows')

applicationsCount = 30
maxVersion = 5

applicationsCount.times do
	apl = Aplikace.create(title: Faker::Product.product_name, description: Faker::Lorem.paragraph, alternativeName: Faker::Lorem.word)
	plCount = Platform.ids.sample
	Platform.ids.sample(plCount).each do |p|
		aplPlt = apl.aplikacePlatforms.create(platform_id: p)
		verCount = [*1..maxVersion].sample
		for i in 1..verCount
			aplPlt.versions.create(version: "ver#{i}")
		end
	end 
end
