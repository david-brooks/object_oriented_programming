
class SalesTax
	attr_accessor :quantity, :item_name, :price
	def initialize(quantity, item_name, price)
		@quantity = quantity
		@item_name = item_name
		@price = price
	end
end

class Item < SalesTax
	def calculate_sales_tax
		@price * 0.1
	end

	def calculate_total
	@price * calculate_sales_tax
	end
end

class ExemptItem < Item
	def calculate_sales_tax
		0
	end
	
	def calculate_total
		@price
	end
end

class ImportedItem < ExemptItem
	def calculate_sales_tax
		@price + 0.10 + @price * 0.05
	end
end

item1 = ExemptItem.new(1, "book", 12.49)
puts item1.calculate_total
item2 = Item.new(1, "music CD", 14.99)

puts item2.calculate_total
item3= ExemptItem.new(1, "choclate_bar", 0.85)
puts item3.calculate_total
puts item1.calculate_sales_tax + item2.calculate_sales_tax + item3.calculate_sales_tax
puts item1.calculate_total + item2.calculate_total + item3.calculate_total
puts ""

item4= ImportedItem.new(1, "imported box of choclates", 10.50)
puts item4.calculate_total
item5= ImportedItem.new(1, "imported bottle of perfume", 54.65)
puts item5.calculate_total
puts item4.calculate_total + item5.calculate_sales_tax
puts item4.calculate_total+item5.calculate_total
puts ""

item6 =ImportedItem.new(1, "Imported bottle of perfume", 32.19)
puts item6.calculate_total
item7 = Item.new(1, "bottle of perfume", 20.89)
puts item7.calculate_total
item8 = ExemptItem.new(1, "packet of headache pills", 9.75)
puts item8.calculate_total