year = gets.to_i
currentYear = Time.now.year
startYear = 1896
ignoredYear = [1916, 1940, 1944, 2020]

if year < startYear || year > currentYear
  puts "#{year}年にオリンピックはまだありません。"
elsif year%4 != 0 || ignoredYear.include?(year)
  puts "#{year}年に開催されませんでした。"
else
  puts "#{year}年に開催されました。"
end
