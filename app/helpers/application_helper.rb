module ApplicationHelper

	def average_price(array)
		((array.prices.sum(:price_low)) / (array.prices.count(:price_low)))
	end

	def average_high_price(array)
		((array.prices.sum(:price_high)) / (array.prices.count(:price_high)))
	end

	def average_medium_price(array)
		((array.prices.sum(:price_low) + (array.prices.sum(:price_high))) / (array.prices.count(:price_low) + (array.prices.count(:price_high))))
	end
end
