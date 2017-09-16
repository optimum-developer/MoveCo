class RequestQuotesController < ApplicationController
	# def new
	# end
	def create
     # debugger
     @new_req=RequestQuote.new(req_quote_params)
     if @new_req.save
     	user_email=@new_req.email
     	description=@new_req.description
        req_name=@new_req.name
        req_date_to_move=@new_req.date_to_move
        req_phone_number=@new_req.phone_number
        req_move_from=@new_req.move_from
        req_move_to=@new_req.move_to
     	SendReqQuoteMailer.send_quote_to_user(user_email,description,req_name).deliver
        SendReqQuoteMailer.send_quote_to_admin(user_email,description,req_name,req_date_to_move,req_phone_number,req_move_from,req_move_to).deliver
        redirect_to root_path
     end
  	end



  	private
	  def req_quote_params
	    params.require(:request_quote).permit(:name,:email,:date_to_move,:phone_number,:description,:move_from,:move_to)
	  end
	# def create
	# end
end
