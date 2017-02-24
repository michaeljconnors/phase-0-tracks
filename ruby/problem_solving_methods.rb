def search_array(arr, num)
  answer = nil
  arr.length.times do |i|
    if arr[i] == num
      answer = i
    end
  end
  return answer
end

example_array = [42, 89, 23, 1]
p search_array(example_array, 1)
p search_array(example_array, 24)

def fibonacci(x)
  numbers = [0,1]
  counter = x - 2
  counter.times do |x| 
    new_number = numbers[-1] + numbers[-2]
  numbers << new_number
end
return numbers
end

# if x where to be 6 [0,1,1,2,3,5]

magic_number = 100
value = fibonacci(magic_number)

new_value = value[-1]

p new_value == 218922995834555169026