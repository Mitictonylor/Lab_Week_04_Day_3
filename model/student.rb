require_relative('../db/sql_runner.rb')
require_relative('./house.rb')

class Student

  attr_accessor :first_name, :second_name, :age, :house_id
  attr_reader :id

  def initialize(student)
    @id = student['id'].to_i if student['id']
    @first_name = student['first_name']
    @second_name = student['second_name']
    @age = student['age'].to_i
    @house_id = student['house_id'].to_i
  end

  def save()
    sql = "INSERT INTO students (first_name, second_name, age, house_id)
          VALUES ($1, $2, $3, $4 ) RETURNING id;"
    values = [@first_name, @second_name, @age, @house_id]
    @id = SqlRunner.run(sql,values)[0]['id'].to_i
  end




end
