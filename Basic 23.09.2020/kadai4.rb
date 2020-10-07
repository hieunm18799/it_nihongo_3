multipleNumber = [2, 7]

number = gets.to_i
multiple = 1
if number == 0 
  puts "整数ではありません"
else
  multipleNumber.each do |i|
    if number % i == 0
      multiple = multiple * i
    end
  end
  if multiple == 1 
    puts "2の倍数でも7の倍数でもありません"
  else
    puts "#{multiple}の倍数です"
  end
end