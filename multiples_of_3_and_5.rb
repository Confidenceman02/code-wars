def solution(number)
   numbers = (0..number-1)
   numbers.to_a.keep_if {|x| x % 5 == 0 || x % 3 == 0}.inject(:+)
end