class Product
    attr_accessor :product_name, :price, :stock_quantity, :bought

    def initialize(product_name, price, stock_quantity)
        @product_name = product_name
        @price = price
        @stock_quantity = stock_quantity
        @bought = 0
    end

    def remaining_stock
        @stock_quantity - @bought
    end

    def increase_stock(quantity)
        @stock_quantity += (quantity - @bought)
    end

    def total_inventory_value
        @stock_quantity * @price
    end

    def buy(quantity)
        puts "A buyer bought #{quantity}"
        @bought = quantity
    end
end

#to test
laptop = Product.new("Lenovo", 10000, 50)
puts "Initial Inventory"
puts "Product Name: #{laptop.product_name}"
puts "Initial Stock Quantity: #{laptop.stock_quantity}"
puts "Remaining Stock: #{laptop.remaining_stock}"
puts "Total Inventory Value: Php #{laptop.total_inventory_value}"

puts "\n"
laptop.buy(5)
puts "Remaining Stock: #{laptop.remaining_stock}"

laptop.increase_stock(10)
puts "\n"
puts "#{laptop.product_name} Stock Inventory"
puts "Updated Stock Quantity: #{laptop.stock_quantity}"
puts "Total Inventory Value: Php #{laptop.total_inventory_value}"