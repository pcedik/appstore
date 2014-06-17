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

a = Aplikace.create(title: 'Homo faber')
p1.aplikace_platform.create(aplikace: a)
a.version.create(version: 'v1.0')


a = Aplikace.create(title: 'Homo faber')
p2.aplikace_platform.create(aplikace: a)
a.version.create(version: 'v1.0')

a = Aplikace.create(title: 'Der Besuch der alten Dame')
p2.aplikace_platform.create(aplikace: a)
a.version.create(version: 'v1.0')


a = Aplikace.create(title: 'Julius Shulman: The Last Decade')
p1.aplikace_platform.create(aplikace: a)
a.version.create([
  {version: 'v1.0'},
  {version: 'v2.0'},
  {version: 'v3.0'}
  ])

a = Aplikace.create(title: 'Julius Shulman: Palm Springs')
p3.aplikace_platform.create(aplikace: a)
a.version.create([
  {version: 'v1.0'},
  {version: 'v2.0'}
  ])


a = Aplikace.create(title: 'Photographing Architecture and Interiors')
p1.aplikace_platform.create(aplikace: a)
a.version.create([
  {version: 'v1.0'},
  {version: 'v2.0'}
  ])

a = Aplikace.create(title: 'Der Zauberberg')
p2.aplikace_platform.create(aplikace: a)
a.version.create(version: 'v1.0')

a = Aplikace.create(title: 'In einer Familie')
p3.aplikace_platform.create(aplikace: a)
a.version.create(version: 'v1.0')