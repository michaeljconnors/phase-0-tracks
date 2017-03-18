# HOME BUYER APPLICANT REVIEW
# DO YOU MAKE ENOUGH?

# require gems

require 'sqlite3'

# create SQLite3 database

db = SQLite3::Database.new("applicant_data.db")

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
interest_rate REAL
)
SQL

#create review table

review_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS review(
id INTEGER PRIMARY KEY,
banker_name VARCHAR(255),
qualify BOOLEAN,
monthly_pmt INT,
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
  db.execute("INSERT INTO kittens (name, age, job_title, salary) VALUES (?, ?, ?, ?)", [name, age, job_title, salary])
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
	puts monthly_salary
	if times_greater >= 2 
		true 
	else
		false 
	end
end


# driver

puts "What is your name?"

applicatnt_name = gets.chomp

puts "What is your age?"

applicatnt_age = gets.chomp

puts "What is your job title?"

applicatnt_job_title = gets.chomp

puts "What is your salary?"

applicatnt_salary = gets.chomp

create_potential_home_buyer(db, applicatnt_name, applicatnt_age, applicatnt_job_title, applicatnt_salary)

applicant_rate = ".05"
applicant_principal = 200000
applicant_years = 15
current_salary = 37000

projected_monthly_payment = calculate_monthly_mortgage(applicant_rate, applicant_principal, applicant_years)

qualify = test_if_qualify(current_salary, projected_monthly_payment)

puts projected_monthly_payment
puts qualify


