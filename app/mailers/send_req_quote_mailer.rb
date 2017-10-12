class SendReqQuoteMailer < ApplicationMailer
  	default from: 'info@eaglemovers.com.au'
	
	def send_quote_to_user(user_email,subject,req_name)
		@u_name=req_name
		mail(:to=>user_email,:subject=>"QUICK QUOTE(1300 EAGLE MOVERS)", :body => "Hi,Thanks for requesting a Quick Quote from 1300 EAGLE MOVERS. We will be reverting soon with best offers for you. Thanks, Team 1300 EAGLE MOVERS.")
	end

	def send_quote_to_admin(user_email,description,req_name,req_date_to_move,req_phone_number,req_move_from,req_move_to)
		@u_email=user_email
		@u_name=req_name
		@u_des=description
		@u_date_to_move=req_date_to_move
		@u_move_from=req_move_from
		@u_move_to=req_move_to
		@u_phone=req_phone_number

		mail(:to=>"info@eaglemovers.com.au",:subject=>"Request Confirmation", :body=>"request send")
	end

	def send_contact_response(email,name)
		@u_name=name
		mail(:to=>email,:subject=>"Contact Reply")
	end

	def send_msgsub_to_contact_admin(email,name,subject,message)
		@email=email
		@u_name=name
		@msg=message
		mail(:to=>"info@eaglemovers.com.au",:subject=>subject)

	end

	def booking_successful_to_user(user_email)
		mail(:to=>user_email,:subject=>"Booking Successful(1300 EAGLE MOVERS)", :body => "Hi,Thanks for choosing 1300 EAGLE MOVERS. Your booking is Successful. Thanks, Team 1300 EAGLE MOVERS.")
	end

end
