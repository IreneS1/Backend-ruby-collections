# Author:  Irene Sanchez
# Discription: The program prompts the user for words and add each to an array 
# until they hit enter to return a blank word. The array is then displayed sorted. 

class SortedWords 
    attr_accessor :words

    def initialize 
        @words = []
    end

    # Method that asks user for words until blank word is entered
    def get_words
        word = " "
        until word == "" do
            puts "Enter any word (To exit, click enter): "
            word = gets.chomp
            @words.push(word)
        end
    end

    # to string method
    def to_s
        @words.pop
        puts "Here is your list: #{@words.sort}"
    end

end

word_list = SortedWords.new
word_list.get_words
word_list.to_s