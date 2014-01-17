class SalesTax
	def initialize#(item)
		@tax_rate = 0.13
		#@item = item
	end
	
	def calculate_sales_tax(price)
		price * @tax_rate
	end
		#def calculate_tax
		#item.calcualate_tax(@tax_rate)
		#end
	
	def calculate_total(price)
		price + calculate_sales_tax
	end
end

class FoodTax < SalesTax
	def initialize
		@tax_rate = 0

end


class Item
	def initialize(price)
		@price = price
	end

#def calculate_tax(tax_rate)
#	tax