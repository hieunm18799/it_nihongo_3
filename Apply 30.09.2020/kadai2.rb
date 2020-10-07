class Menu
    attr_accessor :name
    attr_accessor :price
    def initialize (name:, price:)
        self.name = name
        self.price = price
    end

    def info
        return "#{self.name} #{self.price}vnd"
    end
end

print "Number's food: "
n = gets.to_i
menus = []
for i in 0..n-1
    print "Food's name: "
    name = gets.chomp
    print "Food's price: "
    price = gets.to_i
    menus << Menu.new(name:name, price:price)
end

menus.each do |menu|
    puts menu.info
end