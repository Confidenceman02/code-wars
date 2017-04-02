require 'pry'
require 'date'
def driver(data)
  # coding 1-5, first 5 letter of last name
  first_five = []
  month = []
  first_code_length = 5
  if data[2].length >= first_code_length
     first_five << data[2][0...first_code_length].upcase
  #   Padded with 9's if less than 5 characters
  else
    string_difference_length = first_code_length - data[2].length
    first_five << "#{data[2]}".upcase + "9" * string_difference_length
  end
  # 6 take year value from date
  first_five << data[3].split("-")[2][2]
#   7–8: The month of birth incremented by 5 if driver is female i.e. 51–62 instead of 01–12)
   month_date = Date::ABBR_MONTHNAMES.index(data[3][3,3]).to_s
   # adds 0 to first position if month is less than 10
   month_date.to_i < 10 ? month_date.insert(0, "0") : self
#    first number incremented by 5 if female month integer below 10
     if data[4] == "F" && month_date.to_i < 10
      month_date.gsub!('0', '5')
    elsif data[4] == "F" && month_date.to_i >= 10 
      month_date.sub!('1', '6')
    end
  first_five << month_date
  # push month date into array
  first_five << data[3][0,2]
  # push year into array, single digit
  first_five << data[3].split('-')[2][3]
  # 12-13 first two intiials of first names 
  data[1] == "" ? first_five << data[0][0] + "9" : first_five << data[0][0] + data[1][0]
  first_five << "9"
  first_five << "AA"
  binding.pry
  return first_five.join
  binding.pry
end
driver(["Andrew","Robert","Lee","02-September-1981","M"])