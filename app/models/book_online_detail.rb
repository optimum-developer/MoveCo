class BookOnlineDetail < ApplicationRecord
	def paypal_url(return_path)
		amount_to_pay =  calculate_amout.to_s
	    values = {
	        business: "info@eaglemovers.com.au",
	        cmd: "_xclick",
	        upload: 1,
					invoice: id,
	        amount: "1",
	        item_name: "book",
	        item_number: "1",
	        quantity: '1',
					currency_code: "AUD",
	    }

	    return "https://www.paypal.com/cgi-bin/webscr?" + values.to_query
  end

  def calculate_amout
  	case size_of_truck
	when 1
	  amount = 80
	when 2
	  amount = 90
	when 3
	  amount = 100
	when 4
	  amount = 110
	when 5
	  amount = 120
	else
	  amount = "error"
	end
	# discounted_amount = amount - amount * 10 / 100
	# return discounted_amount
	# amount_multiply=amount*2
	# return amount_multiply
	return amount
  end
end
