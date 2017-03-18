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
interest_rate INT
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
house_info_id REAL,
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

def create_house_info(db, address, price, years_of_mortgage, interest_rate)
  db.execute("INSERT INTO house_info (address, price, years_of_mortgage, interest_rate) VALUES (?, ?, ?, ?)", [address, price, years_of_mortgage, interest_rate])
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


#puts "What is applicant's name?"

#applicatnt_name = gets.chomp
applicatnt_name = "Bryan"

#puts "What is applicant's age?"

#applicatnt_age = gets.chomp
applicatnt_age = 34

#puts "What is applicant's job title?"

#applicatnt_job_title = gets.chomp
applicatnt_job_title = "financial analyst"

#puts "What is applicant's salary?"

#applicatnt_salary = gets.chomp
applicatnt_salary = 90000

create_potential_home_buyer(db, applicatnt_name, applicatnt_age, applicatnt_job_title, applicatnt_salary)
puts buyer = db.execute("SELECT * FROM potential_home_buyer")

#puts "What is the house target house address?"

#target_address = gets.chomp
target_address = "2736 yestserday drive"

#puts "What is the house target house price?"

#target_price = gets.chomp
target_price = 450000

#puts "How many years is the buyer willing to have a mortgage?"

#target_years_of_mortgage = gets.chomp
target_years_of_mortgage = 15

#puts "What is the interest rate?"

#target_interest_rate = gets.chomp
target_interest_rate = 0.034

create_house_info(db, target_address, target_price, target_years_of_mortgage, target_interest_rate)
puts house = db.execute("SELECT * FROM house_info")

applicant_rate = ".05"
applicant_principal = 200000
applicant_years = 15
current_salary = 37000

projected_monthly_payment = calculate_monthly_mortgage(applicant_rate, applicant_principal, applicant_years)

qualify = test_if_qualify(current_salary, projected_monthly_payment)

puts projected_monthly_payment
puts qualify



