column = 5
row = 6
element = 15
right_move = 3

class Bingo
  attr_accessor :array

  def initialize (number1:, number2:, number3:)
    random_number = (number1..number2).to_a.sample(number3)
    self.array = []
    random_number.each do |number|
      self.array << number.to_s
    end
  end
end

bingos = [["B", "I", "N", "G", "O"]]
for i in 1..row - 1
  bingos << Bingo.new(number1:(i - 1) * element + 1, number2:i * 15, number3:column)
end
for i in 0..3
  print "#{bingos[0][i]}".rjust(right_move)
  print " |"
end
puts "#{bingos[0][4]}".rjust(right_move)
 
for i in 1..row - 1
  for j in 0..column - 2
    if i != (row / 2) || j != (column - 1) / 2 
      print "#{bingos[i].array[j]}".rjust(right_move)
    else
      print " ".rjust(right_move)
    end
    print " |"
  end
  puts "#{bingos[i].array[column - 1]}".rjust(right_move)
end