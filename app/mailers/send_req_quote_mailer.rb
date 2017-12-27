class SendReqQuoteMailer < ApplicationMailer
  	default from: 'info@eaglemovers.com.au'

	def send_quote_to_user(user_email,subject,req_name)
		@u_name=req_name
		mail(:to=>user_email,:subject=>"FREE QUOTE(1300 EAGLE MOVERS)")
	end

	def send_quote_to_admin(id_number,user_email,description,req_name,req_date_to_move,req_phone_number,req_move_from,req_move_to,u_number)
		@id_number=id_number
		@u_email=user_email
		@u_name=req_name
		@u_des=description
		@u_date_to_move=req_date_to_move.strftime('%a %d %b %Y')
		@u_move_from=req_move_from
		@u_move_to=req_move_to
		@u_phone=req_phone_number

		mail(:to=>"info@eaglemovers.com.au",:subject=>"Request for Quote #{u_number}")
	end

	def send_contact_response(email,name)
		@u_name=name
		mail(:to=>email,:subject=>"Thanks for Feedback(1300 EAGLE MOVERS)")
	end

	def send_msgsub_to_contact_admin(email,name,subject,message)
		@email=email
		@u_name=name
		@msg=message
		@subject=subject
		mail(:to=>"info@eaglemovers.com.au",:subject=>"New Feedback:")

	end

	def booking_successful_to_user(user_email,user_details)
		@user_details=user_details
		# @u_name=user_name
		mail(:to=>user_email,:subject=>"Booking Successful(1300 EAGLE MOVERS)")
	end

	def book_online_admin_mail(user_details)
		@user_details=user_details
		mail(:to=>"info@eaglemovers.com.au",:subject=>"Job Confirmation #{@user_details.unique_book_number}")
	end

end
