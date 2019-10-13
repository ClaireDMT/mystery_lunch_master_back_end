# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }],)
#   Character.create(name: 'Luke', movie: movies.first)
employee_list = [
  ["Andy", "Payton", "san-francisco", "2018-01", "vegan", true],
  ["Anne", "Straubhaar", "berlin", "2017-09", "no-preference", true],
  ["Tom", "Smith", "berlin", "2016-08", "vegan", true],
  ["Thomas", "Thielsch", "berlin", "2019-02", "vegetarian", true],
  ["Maki", "Takano", "tokyo", "2016-12", "no-preference", false],
  ["Lucia", "Rodriguez", "berlin", "2019-07", "no-preference", true],
  ["Sophia", "Mueller", "berlin", "2018-06", "vegetarian", true],
  ["Paul", "Smith", "berlin", "2019-07", "no-preference", true],
  ["Ling", "Shen", "berlin", "2019-06", "vegan", true],
  ["Hector", "Dussart", "berlin", "2015-12", "no-preference", false],
  ["Carla", "Beyer", "berlin", "2019-05", "no-preference", true],
  ["Kevin", "Satre", "berlin", "2018-03", "no-preference", true],
  ["Viktor", "Sternik", "berlin", "2019-07", "vegan", true],
  ["Alice", "Armitage", "san-francisco", "2019-04", "no-preference", false],
  ["Peter", "Andolina", "berlin", "2018-11", "no-preference", true],
  ["Robert", "Bensmann", "berlin", "2016-05", "no-preference", true],
  ["Christina", "Pisano", "berlin", "2019-02", "no-preference", true],
  ["Kathie", "Baretta", "berlin", "2017-07", "no-preference", true],
  ["Ran", "Oliker", "berlin", "2019-01", "no-preference", true],
  ["Ofira", "Loewenthal", "berlin", "2018-08", "no-preference", false],
  ["Anna", "Olliver", "berlin", Date.today.strftime("%Y-%m"), "no-preference", true],
  ["Son", "Bradley", "berlin", Date.today.strftime("%Y-%m"), "no-preference", true],
  ["Maria", "Bajarovska", "berlin", Date.today.strftime("%Y-%m"), "vegetarian", true],
  ["Daniel", "Wig", "berlin", Date.today.strftime("%Y-%m"), "no-preference", false],
]

employee_list.each do |first_name, last_name, office, joined_date, dietary_requirement, mystery_lunch|
  Employee.create(
    first_name: first_name,
    last_name: last_name,
    joined_date: joined_date,
    office: office,
    dietary_requirement: dietary_requirement,
    mystery_lunch: mystery_lunch
  )
end
