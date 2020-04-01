require_relative('../db/sql_runner.rb')
require_relative('./student.rb')

class House

  attr_accessor :name, :logo
  attr_reader :id

  def initialize(house)
    @id = house['id'].to_i if customer['id']
    @name = house['name']
    @logo = house['logo']
  end



def save()
  sql = "INSERT INTO houses (name,logo)
        VALUES ($1,$2) RETURNING id;"
  values = [@name, @logo]
  @id = SqlRunner.run(sql,values)[0]['id'].to_i
end



end
