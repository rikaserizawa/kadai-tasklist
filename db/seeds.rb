# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create(name: "testユーザー1", password:'a', profile: "グループ1")
Member.create(name: "testユーザー2", password:'a', profile: "グループ1")
Member.create(name: "testユーザー3", password:'a', profile: "グループ1")
Member.create(name: "testユーザー4", password:'a', profile: "グループ2")
Member.create(name: "testユーザー5", password:'a', profile: "グループ3")
