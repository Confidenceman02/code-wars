require 'pry'
def remove_smallest(numbers)
  return numbers if numbers.empty? 
  numbers.slice!(numbers.index(numbers.min))
  binding.pry
  return numbers
end
  remove_smallest([1,2,3,4,5])