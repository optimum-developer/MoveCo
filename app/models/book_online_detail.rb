class BookOnlineDetail < ApplicationRecord
	validates :email, presence: true
	validates :first_name, presence: true
  validates :mobile_phone_number, presence: true
  validates :date_to_move, presence: true
  validates :size_of_truck, presence: true
	def paypal_url(return_path)
		amount_to_pay =  calculate_amout.to_s
	    values = {
	        business: "info@eaglemovers.com.au",
	        cmd: "_xclick",
	        upload: 1,
					invoice: id,
	        amount: amount_to_pay,
	        item_name: "book",
	        item_number: "1",
	        quantity: '1',
					currency_code: "AUD",
	    }
	    return "https://www.paypal.com/cgi-bin/webscr?" + values.to_query
  end
  def calculate_amout
  	case size_of_truck
	when "4.5T/2MEN($80/hr)"
	  amount = 80
	when "6T/2MEN($90/hr)"
	  amount = 90
	when "8T/2MEN($100/hr)"
	  amount = 100
	when "10T/2MEN($110/hr)"
	  amount = 110
	when "12T/2MEN($120/hr)"
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
