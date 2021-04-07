# Author: Irene Sanchez
# Discription: This program asks the user for a 
# starting year and an ending year, and it will then print out all 
# the leap years between them, including the starting or ending 
# year if those are leap years.

class LeapYear 
    attr_accessor = :start_year, :end_year, :year_list, :final_list

    def initialize 
        @start_year = ""
        @end_year = ""
        @year_list = [] # array to store all years
        @final_list = [] # array to store leap years
    end
    
    # The leap method adds the leap years into a new array
    def leap
        while (@start_year <= @end_year) do 
            if (@start_year % 100) == 0 and (@start_year % 400) !=0
                next
            elsif (@start_year % 4) == 0 or (@start_year % 400) == 0
                @final_list.push(@start_year)
            end
            @start_year += 1
        end
    end

    # Method that asks user to enter starting and ending years
    def years
        puts "Welcome to the leap year generator! "
        puts "Enter the starting year: "
        start = gets.chomp
        @start_year = start.to_i
        puts "Enter the ending year: "
        end_yr = gets.chomp
        @end_year = end_yr.to_i
        @year_list = (@start_year...@end_year).to_a
    end


    def to_s
        puts "First list: #{@year_list}"
        puts " Final: #{@final_list}"
    end

end

# new leap year object 
y = LeapYear.new
# invoke years method, leap method, and to_s method
y.years
y.leap
y.to_s