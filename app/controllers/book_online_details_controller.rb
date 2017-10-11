class BookOnlineDetailsController < ApplicationController
	def create
    	@new_book_online_detail=BookOnlineDetail.new(contact_params)
     	if @new_book_online_detail.save
          # redirect_to home_book_online_path
          SendReqQuoteMailer.booking_successful_to_user(@new_book_online_detail.email).deliver
          amt = @new_book_online_detail.calculate_amout
          redirect_to @new_book_online_detail.paypal_url(root_path)
      end
        # redirect_to home_contact_path
    end

    private
	  def contact_params
	    params.require(:book_online_detail).permit(:first_name, :last_name, :email, :home_phone_number, :mobile_phone_number, :move_from, :move_to, :date_to_move, :city, :country, :zipcode, :time_slot, :number_of_bedrooms, :size_of_truck)
	  end
end
