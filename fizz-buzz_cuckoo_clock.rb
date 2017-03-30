require 'pry'

def fizz_buzz_cuckoo_clock(time)
   split_time_array = time.split(":")
    minutes = split_time_array[1].to_i
    hours = split_time_array[0].to_i
    cuckoo = "Cuckoo "
    if hours > 12
        hours -= 12
    end
   
    if
        split_time_array.join.to_i == 0000
        puts "#{cuckoo * 12}".rstrip
   elsif 
       minutes == 00 
       puts "#{cuckoo * hours}".rstrip
    elsif
        minutes == 30 
        puts "Cuckoo"
    elsif
       minutes % 3 == 0 && minutes % 5 == 0
       puts "Fizz Buzz"
    elsif
        minutes % 3 == 0
        puts "Fizz"
    elsif
        minutes % 5 == 0
        puts "Buzz"
    else
        puts "Tick"
  end
end

fizz_buzz_cuckoo_clock("00:02") 

#    split_time_array.map! {|x| x.include? "0" ? x.delete : nil }
  
#    
#    
#    check to see if minutes are divisible by 
#    if split_time_array[1].to_i % 3 == 0
#        return "Fizz"
#     elsif
#         split_time_array[1].to



