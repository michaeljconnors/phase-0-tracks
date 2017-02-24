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