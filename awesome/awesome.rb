# HOME BUYER APPLICANT REVIEW
# DO YOU MAKE ENOUGH?

# require gems

require 'sqlite3'
require 'faker'

# create SQLite3 database

db = SQLite3::Database.new("applicant_data.db")
db.results_as_hash = true

# create delimiter that lays the frame work for a potential_home_buyer

create_table_home_buyer_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS potential_home_buyer(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
age INT,
job_title VARCHAR(255),
salary INT 
)
SQL

# create delimiter that lays the frame work for a house_info table

house_info_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS house_info(
id INTEGER PRIMARY KEY,
address VARCHAR(255),
price INT,
years_of_mortgage INT,
interest_rate REAL,
monthly_pmt INT
)
SQL

#create review table

review_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS review(
id INTEGER PRIMARY KEY,
banker_name VARCHAR(255),
potential_id INT,
house_info_id INT,
FOREIGN KEY (potential_id) REFERENCES potential_home_buyer(id),
FOREIGN KEY (house_info_id) REFERENCES house_info(id)
)
SQL

# create tables

db.execute(create_table_home_buyer_cmd)
db.execute(house_info_cmd)
db.execute(review_cmd)


# method that adds data to potential_home_buyer table
# input: name, age, job title, salary
# steps:
   # insert data
# output: updated table

def create_potential_home_buyer(db, name, age, job_title, salary)
	db.execute("INSERT INTO potential_home_buyer (name, age, job_title, salary) VALUES (?, ?, ?, ?)", [name, age, job_title, salary])
end

# method that adds data to house_info table
# input: address, price, years_of_mortgage, interst_rate
# steps:
   # insert data
# output: updated table

def create_house_info(db, address, price, years_of_mortgage, interest_rate, monthly_pmt)
	db.execute("INSERT INTO house_info (address, price, years_of_mortgage, interest_rate, monthly_pmt) VALUES (?, ?, ?, ?, ?)", [address, price, years_of_mortgage, interest_rate, monthly_pmt])
end

# method that reviews home loan info
# input: banker_name, qualify, monthly_pmt, potential_id, house_info_id
# steps:
   # insert data
# output: updated table

def create_review(db, banker_name, potential_id, house_info_id)
	db.execute("INSERT INTO review (banker_name, potential_id, house_info_id) VALUES (?, ?, ?)", [banker_name, potential_id, house_info_id])
end

# method that calculates monthly mortgage
# input: rate, principal, years
# steps:
   # calculate new rate
   # calculate number of payments
   # calculate monthly payments
# output: return monthly payment number

def calculate_monthly_mortgage(rate, principal, years)
	new_rate = rate.to_f / 12
	num_payments = 12 * years
	monthly_payment = principal * ((new_rate * (1 + new_rate) ** num_payments)/((1 + new_rate) ** num_payments - 1))
	return monthly_payment.round(2)
end

# method that tests if mothly salary is over (or equal to) twice the amount of the monthly payment
# input: current salary, monthly payment
# steps:
   # calculate monthly salary
   # calculate the number of times greater the salary is the monthly payment(if at all)
   		# IF times greater is equal to or more than two
   			#then TRUE
   		# ELSE FALSE
# output: return boolean

def test_if_qualify(current_salary, monthly_payment)
	monthly_salary = current_salary / 12
	times_greater = monthly_salary / monthly_payment
	if times_greater >= 2 
		answer = true 
	else
		answer = false 
	end
	return answer
end

#DRIVER CODE


salary = 150000
100.times do 
	random_number = Random.new
	age = random_number.rand(23...42)
	create_potential_home_buyer(db, Faker::Name.name, age , "director", salary)
	random_number = Random.new
	salary = random_number.rand(0...90000)
end


#puts db.execute("SELECT * FROM potential_home_buyer")





100.times do
	random_number = Random.new
	target_years_of_mortgage = random_number.rand(15...30)
	target_interest_rate = 0.035
	random_number = Random.new
	target_price = random_number.rand(0...700000)
	target_monthly_pmt = calculate_monthly_mortgage(target_interest_rate, target_price, target_years_of_mortgage)
	random_number = Random.new
	address = random_number.rand(0...2000)
	create_house_info(db, "#{address} Austin", target_price, target_years_of_mortgage, target_interest_rate, target_monthly_pmt)
end

#puts db.execute("SELECT * FROM house_info")

#puts "What is the bankers name?"

#banker_name = "rob"

#puts "What is the ID of the potential buyer?"

#potential_id = 2

#puts "What is the ID of the potential house?"

#house_info_id = 3

50.times do
	random_number = Random.new
	number = random_number.rand(15...30)
	puts create_review(db, Faker::Name.name, number, number)
end

# Join tables and execute command line

#puts db.execute("SELECT * FROM review")

all_data = db.execute("SELECT * FROM review LEFT JOIN potential_home_buyer ON review.potential_id=potential_home_buyer.id INNER JOIN house_info ON review.house_info_id=house_info.id;")

# Prompt user what action they would like to take
# ITERATE through all data and print out banker name, name of potential buyer, and the status of the review
  # IF test_quality method is true then print accepted in statement
  # IF test quality method is false then print rejected


  loop do
  	puts "Please type in the following on the right, for the desired action on the left:"
  	puts "view - view listed summary"
  	puts "all - view all data"
  	puts "input - create data"
  	puts "manipulate - change data"

  	input = gets.chomp

  	if input == "view"

  		all_data.each do |all_data|
  			tester = test_if_qualify("#{all_data['salary']}".to_i, "#{all_data['monthly_pmt']}".to_i)
  			if tester == true
  				status = "accepted"
  			else tester == false
  				status = "rejected"
  			end
  			puts "#{all_data['banker_name']} counducted the mortgage review for #{all_data['name']}."
  			puts "#{all_data['name']}'s loan was #{status} for #{all_data['address']}."
  		end

  	elsif input == "all"
  		puts all_data

  	else input == "input"



  		puts "What is applicant's name?"

  		applicant_name = gets.chomp

  		puts "What is applicant's age?"

  		applicant_age = gets.chomp

  		puts "What is applicant's job title?"

  		applicant_job_title = gets.chomp

  		puts "What is applicant's salary?"

  		applicant_salary = gets.chomp

  		create_potential_home_buyer(db, applicant_name, applicant_age, applicant_job_title, applicant_salary)

  		puts "What is the house target house address?"

  		target_address = gets.chomp

  		puts "What is the house target house price?"

  		target_price = gets.chomp

  		puts "How many years is the buyer willing to have a mortgage?"

  		target_years_of_mortgage = gets.chomp

  		puts "What is the interest rate?"

  		target_interest_rate = gets.chomp

  		create_house_info(db, target_address, target_price, target_years_of_mortgage, target_interest_rate)

  		puts "What is the bankers name?"

  		banker_name = gets.chomp

  		puts "What is the ID of the potential buyer?"

  		potential_id = gets.chomp

  		puts "What is the ID of the potential house?"

  		house_info_id = gets.chomp

  		create_review(db, banker_name, potential_id, house_info_id)
  	end
  	break if input = "exit"
  	puts "Have a great day!"
  end





# OLD DRIVER CODE
#applicant_rate = ".05"
#applicant_principal = 200000
#applicant_years = 15
#current_salary = 37000

#projected_monthly_payment = calculate_monthly_mortgage(applicant_rate, applicant_principal, applicant_years)

#qualify = test_if_qualify(current_salary, projected_monthly_payment)

#puts projected_monthly_payment
#puts qualify
