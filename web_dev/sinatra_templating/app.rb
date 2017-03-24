# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
	@students = db.execute("SELECT * FROM students")
	erb :home
end

get '/students/new' do
	erb :new_student
end

# create new students via
# a form
post '/students' do
	db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
	redirect '/'
end

# add static resources

# create a new route

get '/edit_form' do
	erb :edit_form
end

# edit current students info

post '/edit_form' do
	db.execute("UPDATE students SET name=?, campus=?, age=? WHERE name=?",[params['name'], params['campus'], params['age'].to_i], params['current_name']);
	redirect '/'
end

