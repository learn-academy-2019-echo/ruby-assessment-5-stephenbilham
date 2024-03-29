# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

my_array = [1, 2, 6, 9, 3, 21]
new_array = []
my_array.each do |element|
 new_array.push(element * 3)
end
p new_array


new_array = my_array.map{ |x| x * 3}
p my_array


2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = 'hello there, how are you?'
 new_sentence = sentence.split.map{ |value| value.capitalize}
p new_sentence.join(" ")

3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"

def remove_vowels (sentence)
   sentence.delete('a,e,i,o,u')
end
p (remove_vowels(no_vowels))

4. Look at this horrible Ruby code. Fix it to be good Ruby code.

class Example
  def initialize(day)
    @day = day
  end
  def say_hi
    if @day == 'Friday'
      puts 'TGIF!'
    elsif @day == 'Monday'
      puts 'Its monday again'
    else
      puts 'another day'
    end
  end
end

my_day = Example.new
p my_day.day('Friday')


5a. Create a class called Animal that initializes with a color.
 Create a method in the class called legs that returns 4.


class Animal
  def initialize(color ='blue')
    @color = color
    @legs = 4
  end
    def legs
      @legs
  end
end
animal = Animal.new
p animal.legs

5b. Create a new instance of an Animal with a brown color.
Return how the number of legs for the animal object.

class Animal
  def initialize(color)
    @color = color
    @legs = 4
  end
    def legs
      @legs
  end
end

class BrownAnimal < Animal
  def initialize(color)
    super('brown')
  end
end

animal = BrownAnimal.new
animal.legs