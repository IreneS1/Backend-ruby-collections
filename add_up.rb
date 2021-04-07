# Author:  Irene Sanchez
# Discription: This program has a method, add_up(num) which passes a positive integer, 
# and it will add all the numbers from 1 to that integer and return the sum.  

class AddNums
    attr_accessor :sum, :numbers, :num

    def initialize
        @numbers = []
        @sum = 0
        @num = 0
    end

    # the add_up method takes one parameter called num. It adds 1 - num and returns the sum 
    def add_up(num)
        @num = num
        @numbers = (1..num).to_a
        @sum = @numbers.inject(0){|sum,x| sum + x}
    end

    # to string method
    def to_s
        puts "The sum of the numbers 1 through #{@num} is: #{@sum}"
    end

end

# first number object
first_num = AddNums.new
first_num.add_up(10)
first_num.to_s

# second number object
second_num = AddNums.new
second_num.add_up(50)
second_num.to_s

#third number object
third_num = AddNums.new
third_num.add_up(100)
third_num.to_s
