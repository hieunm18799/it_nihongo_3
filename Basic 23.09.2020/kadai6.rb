studentsDetails = []
name = ""
studentNumber = 0

print "学生の人数を入力してください > "
numberStudents = gets.to_i
for i in 1..numberStudents
  puts "#{i}番目の学生の名前は何ですか?"
  print "名前 > "
  name = gets.chomp
  print "学生番号 > "
  studentNumber = gets.to_i
  studentsDetails.push({name: name, studentNumber: studentNumber})
end

puts "-------------名簿---------------"
for i in 1..numberStudents
  puts "学生番号 #{studentsDetails[i - 1][:studentNumber]} - 名前 #{studentsDetails[i - 1][:name]}"
end
puts "-------------------------------"