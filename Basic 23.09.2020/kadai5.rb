studentsName = []

print "学生の人数を入力してください > "
studentNumber = gets.to_i
for i in 1..studentNumber
  puts "#{i}番目の学生の名前は何ですか?"
  print "名前 > "
  studentsName.push(gets.chomp)
end

puts "-------------名簿---------------"
for i in 1..studentNumber
  puts "+#{i}番目の学生は#{studentsName[i - 1]}です"
end
puts "-------------------------------"