print "hello world"
#This is puts com explain
puts "Hello Sensei"
puts "Puts com"
=begin
  This is p com explain
=end
p "p com"

puts
puts "文字列"     #文字列
puts 3 + 5       #8
puts "3" + "5"   #文字列の連結
puts "3 + 5"     #3+5

puts
puts 9 + 2 #11
puts 9 - 2 #7
puts 9 * 2 #18
puts 9 / 2 #4
puts 9 % 2 #1

puts
name = "Conan"
_Age = 30

name = "Conan"
puts "こんにちは" + name
message = "こんにちは"
puts message + name
number1 = 10
puts number1 + 3
number2 = 5
puts number1 * number2

puts
country = "Japan"
puts country
country = "Vietnam"
puts country

puts
number = 2
puts number
number = number + 3
puts number

puts
name = "Conan"
puts "こんにちは#{name}さん"
age = "30"
puts "#{age}歳です"
puts "こんにちは#{name}"
puts 'こんにちは#{name}'

puts
name = " Conan"
puts name == "Conan"
puts name != "Conan"

puts
score = 99
puts score < 50 || score >=99

puts
num = 10 
if num.even?
  puts '偶数'
elsif num.odd?
  puts '奇数'
else 
  puts '整数'
end

puts
unless num.even?
  puts '偶数'
else
  puts '整数'
end

puts
puts '偶数' if num.even?
puts '整数' unless num.even?

puts
array = [-1, -2, -3].map do |i|
i + 1
end
p array

puts
users = [
{name: "Suzuki",age: 21 } ,
{name: "Kato",age: 14 }
]
#eachの中でハッシュの値を使う場合
users.each do |user|
puts user[:name]
end

puts
p %w(nihon america)