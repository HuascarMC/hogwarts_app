require_relative('../models/student.rb')
require_relative('../models/house.rb')
require('pry')

house1 = House.new({
  'name' => 'Gryffindor',
  'logo' => 'https://tinyurl.com/ydga23ob'
  })

house2 = House.new({
  'name' => 'Hufflepuff',
  'logo' => 'https://tinyurl.com/y7xqxkga'
  })

house3 = House.new({
  'name' => 'Ravenclaw',
  'logo' => 'https://tinyurl.com/jl6clx8'
  })

house4 = House.new({
  'name' => 'Slytherin',
  'logo' => 'https://tinyurl.com/y9uqgjud'
  })

house5 = House.new({
  'name' => 'Codeclan',
  'logo' => 'https://tinyurl.com/y9eymsfm'
  })

  house1.save()
  house2.save()
  house3.save()
  house4.save()
  house5.save()

student1 = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'house_id' => house1.id,
  'age' => '68'
  })

student2 = Student.new({
  'first_name' => 'Ron',
  'last_name' => 'Wesley',
  'house_id' => house1.id,
  'age' => '103'
  })

  student1.save()
  student2.save()


binding.pry
nil
