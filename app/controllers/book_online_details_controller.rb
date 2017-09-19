class BookOnlineDetailsController < ApplicationController
	def create
    	@new_book_online_detail=BookOnlineDetail.new
     	if @new_book_online_detail.save
          redirect_to home_book_online_path
        end
        # redirect_to home_contact_path
    end

    private
	  def contact_params
	    params.require(:book_online_detail).permit()
	  end
end
