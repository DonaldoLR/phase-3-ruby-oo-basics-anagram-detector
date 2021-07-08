# Your code goes here!
class Anagram 
  attr_accessor :string
  def initialize(string)
    @string = string
  end

  def match(possible_anagrams_array)
    possible_anagrams_array.select do |elem| 
      elem.downcase.split("").sort.join("") == @string.downcase.split("").sort.join("")
    end
      
  end
end

listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana))