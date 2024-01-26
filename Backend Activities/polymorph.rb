class ProductInventory
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
  
    def inventory_checker
      puts "#{@product_name} Stock Inventory"
      puts "Updated Stock Quantity: #{@stock_quantity}"
      puts "Total Inventory Value: Php #{total_inventory_value}"
    end
end

class Appliances < ProductInventory
    def initialize(product_name, price, stock_quantity, warranty_period)
        super(product_name, price, stock_quantity)
        @warranty_period = warranty_period
    end

    #duck-typing inventory checker heeere
    def inventory_checker 
        super
        puts "Warranty Period: #{@warranty_period} months"
    end
end

class Clothing < ProductInventory
    def initialize(product_name, price, stock_quantity, size)
        super(product_name, price, stock_quantity)
        @size = size
    end

    #duck-typing inventory checker heeere
    def inventory_checker
        super
        puts "Size: #{@size}"
    end
end

# to test
television = Appliances.new("TV", 25000, 20, 24)
pants = Clothing.new("Cargo Pants", 599, 80, "Small")
television.inventory_checker
pants.inventory_checker




  
