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

class Drink < Menu
    attr_accessor :size
    
    def initialize (name:, price:)
        super
    end

    def set_Size (size:)
      self.size = size
    end

    def info
        return "#{self.name} #{self.price}vnd #{self.size}"
    end
end
print "Number's food and drink: "
n = gets.to_i
menus = []
for i in 0..n-1
    print "Food's or drink's name: "
    name = gets.chomp
    print "Food's or drink's price: "
    price = gets.to_i
    pos = name.index(?()
    if pos != nil 
        size = name [pos, name.length-1]
        name = name [0, pos]
        menus << Drink.new(name:name, price:price)
        menus[i].set_Size(size:size)
    else menus << Menu.new(name:name, price:price)
    end
end

menus.each do |menu|
    puts menu.info
end