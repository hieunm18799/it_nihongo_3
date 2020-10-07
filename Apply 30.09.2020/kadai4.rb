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
        return "#{self.name} #{self.price}vnd (#{self.size}サイズ)"
    end
end

menus = []
menus << Menu.new(name:"Pho", price:30000)
menus << Menu.new(name:"Bun cha", price:40000)
menus << Menu.new(name:"Banh mi", price:20000)
menus << Drink.new(name:"Tra", price:5000)
menus[menus.length - 1].set_Size(size:"S")
menus << Drink.new(name:"Tra", price:10000)
menus[menus.length - 1].set_Size(size:"M")

index = 0
menus.each do |menu|
  puts "#{index}." + menu.info
  index += 1
end

puts "--------------"
print "メニューの番号を選択してください: "
order = gets.to_i
selected_menu = menus[order]
if selected_menu.respond_to?(:size)
  puts "選択されたメニュー: #{selected_menu.name}(#{selected_menu.size}サイズ)"
else
  puts "選択されたメニュー: #{selected_menu.name}"
end
puts "お会計は#{selected_menu.price}です"