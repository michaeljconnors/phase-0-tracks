#HOME BUYER APPLICANT REVIEW

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


applicant_rate = ".05"
applicant_principal = 200000
applicant_years = 15
current_salary = 37000

projected_monthly_payment = calculate_monthly_mortgage(applicant_rate, applicant_principal, applicant_years)

qualify = test_if_qualify(current_salary, projected_monthly_payment)

puts projected_monthly_payment
puts qualify

#type the number of the year born
#type the number of the month born

#def birth(year, month)
#  current_year = 2017
#  current_month = 3 
#  current_day = 7
#  if current_month =< 3 && current_day =<
#end
