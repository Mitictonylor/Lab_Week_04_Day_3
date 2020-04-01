require('pry')
require_relative('./model/student.rb')
require_relative('./model/house.rb')


house1 = House.new({
  'name' => "Gryffindor",
  'logo' => "lyon"
  })
house2 = House.new({
    'name' => "Ravenclaw",
    'logo' => "Raven"
  })
house3 = House.new({
    'name' => "Hufflepuff",
    'logo' => "Badger"
    })
house4 = House.new({
    'name' => "Slytherin",
    'logo' => "Snake"
      })
house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({
  'first_name' => 'Harry',
  'second_name' => 'Potter',
  'age' => 14,
  'house_id' => house1.id
  })

student2 = Student.new({
  'first_name' => 'Andrew',
  'second_name' => 'Woodbridge',
  'age' => 18,
  'house_id' => house2.id
  })
student3 = Student.new({
  'first_name' => 'John',
  'second_name' => 'Taggart',
  'age' => 25,
  'house_id' => house3.id
  })
student4 = Student.new({
  'first_name' => 'Antonio',
  'second_name' => 'Lorusso',
  'age' => 32,
  'house_id' => house4.id
  })
student1.save()
student2.save()
student3.save()
student4.save()

binding.pry
nil
