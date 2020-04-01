require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./model/student.rb')
require_relative('./model/house.rb')
also_reload('./models/*')



  get '/students' do
    @students = Student.all()
    erb(:index)
  end

  get '/students/new'do
    @houses = House.all()
    erb(:new)
  end


  get '/students/:id/delete'do
  id = params['id']
  students = Student.find_student_by_id(id)
  students.delete()
  redirect '/students'
  end


  get '/students/:id/edit'do
    id = params['id']
    @students = Student.find_student_by_id(id)
    @houses = House.all()
    erb(:edit)
  end

  post '/students' do
    new_student = Student.new(params)
    new_student.save
    erb(:create)
  end

  post '/students/:id'do
    # p params.to_s
    student = Student.new(params)
    student.update
    redirect to '/students'
  end
