# Author:  Irene Sanchez
# Discription: This program asks for a person's first name, 
# middle name, and last name. It stores each of these parts 
# in an array. Finally, it greets the person using their full name. 

class FullName
    attr_accessor :full_name

    def initialize
        @full_name = []
    end

    # the first method asks user for their first name and adds it to the full name array
    def first
        puts "What is your first name? "
        first_name = gets.chomp
        @full_name.push(first_name)
    end

    # the middle method asks user for their middle name and adds it to the full name array
    def middle
        puts "What is your middle name? "
        middle_name = gets.chomp
        @full_name.push(middle_name)
    end

    # the last method asks user for their last name and adds it to the full name array
    def last
        puts "What is your last name? "
        last_name = gets.chomp
        @full_name.push(last_name)
    end

    # to string method
    def to_s
        full = @full_name.join(" ")
        puts "Happy to have you here, #{full}!"
    end

end

# full name object
name = FullName.new
# invoke first, middle, last, and to_s methods
name.first
name.middle
name.last
name.to_s
