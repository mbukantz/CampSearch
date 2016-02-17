# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


x = 100 #number of camps
y = 1000 #number of camp/activity combos


x.times do |i|
  camp = Camp.new
  camp.name = "#{Faker::Address.city} Camp"
  camp.category = ["Overnight", "Day"].sample
  camp.days = [14,28,42,49,56].sample
  camp.city = Faker::Address.city
  camp.state = Faker::Address.state
    if camp.days == 14
      camp.cost = rand(2000..5000)
    elsif camp.days == 28
      camp.cost = rand(4000..8000)
    else
      camp.cost = rand(7500..12000)
    end
  camp.save
end

Activity.create([{name:'Soccer', category:'Sport'},{name:'Hockey', category:'Sport'},{name:'Tennis', category:'Sport'},{name:'Softball', category:'Sport'},{name:'Lake', category:'Water'},{name:'Kayaking', category:'Water'},{name:'Waterfront cookout', category:'Water'},{name:'Crafts', category:'Specialty'},{name:'Woodshop', category:'Specialty'},{name:'Archery', category:'Sport'},{name:'UltimateFrisbee', category:'Sport'},{name:'Football', category:'Sport'},{name:'Chess', category:'Specialty'},{name:'Rowing', category:'Water'}])

y.times do |i|
  campactivity = Campactivity.new
  campactivity.camp_id = rand(1..Camp.last.id)
  campactivity.activity_id = rand(1..Activity.last.id)
  campactivity.save
end
