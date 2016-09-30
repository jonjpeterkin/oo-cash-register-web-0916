require "pry"


class CashRegister
	attr_accessor :total
	attr_reader :discount, :items

	def initialize(discount = 0)
		@total = 0
		@items = []
		@discount = discount
	end

	def add_item(item, price, count = 1)
		@total += price * count
		count.times { @items << item }
	end

	def apply_discount
		if @discount == 0
			"There is no discount to apply."
		else
			@total = @total * ((100.0 - @discount) / 100.0)
			"After the discount, the total comes to $#{@total.round}."
		end		
	end

	def void_last_transaction
		@total = 0
	end


end

