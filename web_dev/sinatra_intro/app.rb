# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a route taht displays an address
get '/contact' do
  "324 Bakerstreet Ct. Austin, TX <br>"
end

# write a route that takes a persons name as a query parameter and say good job "pesrsons name"

get '/job/:person' do
  person = params[:person]
  if person
    "Good job, #{person}!"
  else
    "Good Job!"
  end
end

# write a parameter that to add two numbers

get '/add/:number_1/:number_2' do
solution = "#{params[:number_1].to_i + params[:number_2].to_i}"
"#{solution}"
end

