class BookOnlineDetail < ApplicationRecord
	def paypal_url(return_path)
		amount_to_pay =  calculate_amout.to_s
	    values = {
	        business: "amandeepk@codegaragetech.com",
	        cmd: "_xclick",
	        upload: 1,
	        return: return_path,
	        invoice: id,
	        amount: amount_to_pay,
	        item_name: "book",
	        item_number: "1",
	        quantity: '1',
	        notify_url: "#{Rails.application.secrets.app_host}/hook"
	    }
	    return "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
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
	discounted_amount = amount - amount * 10 / 100
	return discounted_amount
  end
end
