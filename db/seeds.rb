# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Aplikace.create(title: 'Homo faber').version.create(version: 'v1.0')
Aplikace.create(title: 'Der Besuch der alten Dame').version.create(version: 'v1.0')
Aplikace.create(title: 'Julius Shulman: The Last Decade').version.create([
  {version: 'v1.0'},
  {version: 'v2.0'},
  {version: 'v3.0'}
  ])
Aplikace.create(title: 'Julius Shulman: Palm Springs').version.create([
  {version: 'v1.0'},
  {version: 'v2.0'}
  ])
Aplikace.create(title: 'Photographing Architecture and Interiors').version.create([
  {version: 'v1.0'},
  {version: 'v2.0'}
  ])
Aplikace.create(title: 'Der Zauberberg').version.create(version: 'v1.0')
Aplikace.create(title: 'In einer Familie').version.create(version: 'v1.0')