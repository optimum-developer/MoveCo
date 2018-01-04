class SendEmailUserAdminJob < ApplicationJob
  queue_as :default

  def perform(id)
    @new_req=RequestQuote.find(id)
    user_email=@new_req.email
    description=@new_req.description
    req_name=@new_req.name
    req_date_to_move=@new_req.date_to_move
    req_phone_number=@new_req.phone_number
    req_move_from=@new_req.move_from
    req_move_to=@new_req.move_to
    u_number=@new_req.unique_quote_number
    SendReqQuoteMailer.send_quote_to_user(user_email,description,req_name).deliver
    SendReqQuoteMailer.send_quote_to_admin(@new_req.id,user_email,description,req_name,req_date_to_move,req_phone_number,req_move_from,req_move_to,u_number).deliver
    # Do something later
  end
end
