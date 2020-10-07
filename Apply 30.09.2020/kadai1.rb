print "Food's name: "
name = gets.chomp
print "Order's number: "
count = gets.to_i

price = 0
price_check = [
    {name:"Pho", price:30000},
    {name:"Ramen", price:50000}
]
price_check.each do |i|
    if i[:name] == name
        price = i[:price]
    end
end

class Menu
    attr_accessor :name
    attr_accessor :price

    def get_total_price(count)
        total_price = count * self.price
        if count >= 3 
            total_price -= 10000
        end
        return "#{self.name} #{total_price}vnd"
    end
end

menu1 = Menu.new
menu1.name = name
menu1.price = price 

puts menu1.get_total_price(count)