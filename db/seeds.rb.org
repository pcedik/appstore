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

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae porttitor mi. Praesent sit amet nunc vel augue feugiat ullamcorper ac et elit. Nam egestas lobortis rutrum. Suspendisse potenti. Nullam egestas iaculis rutrum. Fusce pulvinar ut lacus eu mollis. Ut a enim at risus suscipit luctus et et elit. Suspendisse laoreet mauris est, ut iaculis sapien posuere sit amet. Integer a nibh convallis, pellentesque nibh sit amet, accumsan mi. Morbi ac ante nec metus sollicitudin facilisis."

p1.aplikaces.create(title: 'Homo faber', description: lorem).versions.create(version: 'v1.0')


a = Aplikace.create(title: 'testik', description: lorem)
p2.aplikacePlatforms.create(aplikace: a)
p3.aplikacePlatforms.create(aplikace: a)
a.versions.create(version: 'v1.0')


a = Aplikace.create(title: 'Der Besuch der alten Dame', description: lorem)
p2.aplikacePlatforms.create(aplikace: a)
a.versions.create(version: 'v1.0')


a = Aplikace.create(title: 'Julius Shulman: The Last Decade', description: lorem)
p1.aplikacePlatforms.create(aplikace: a)
a.versions.create([
  {version: 'v1.0'},
  {version: 'v2.0'},
  {version: 'v3.0'}
  ])

a = Aplikace.create(title: 'Julius Shulman: Palm Springs', description: lorem)
p3.aplikacePlatforms.create(aplikace: a)
a.versions.create([
  {version: 'v1.0'},
  {version: 'v2.0'}
  ])


a = Aplikace.create(title: 'Photographing Architecture and Interiors', description: lorem)
p1.aplikacePlatforms.create(aplikace: a)
a.versions.create([
  {version: 'v1.0'},
  {version: 'v2.0'}
  ])

a = Aplikace.create(title: 'Der Zauberberg', description: lorem)
p2.aplikacePlatforms.create(aplikace: a)
a.versions.create(version: 'v1.0')

a = Aplikace.create(title: 'In einer Familie', description: lorem)
p3.aplikacePlatforms.create(aplikace: a)
a.versions.create(version: 'v1.0')