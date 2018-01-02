class PaymentNotificationsController < ApplicationController
  protect_from_forgery :except => [:create] #Otherwise the request from PayPal wouldn't make it to the controller
  def create
    response = validate_IPN_notification(request.raw_post)
    case response
    when "VERIFIED"
      if params["payment_status"]=="Completed"
        @new_book_online_detail=BookOnlineDetail.find(params["invoice"].to_i)
  			SendReqQuoteMailer.booking_successful_to_user(@new_book_online_detail.email,@new_book_online_detail).deliver
  			SendReqQuoteMailer.book_online_admin_mail(@new_book_online_detail).deliver
      end
      # check that paymentStatus=Completed
      # check that txnId has not been previously processed
      # check that receiverEmail is your Primary PayPal email
      # check that paymentAmount/paymentCurrency are correct
      # process payment
      return "https://139.59.88.132"
    when "INVALID"
      # log for investigation
    else
      # error
    end

  end
  protected
  def validate_IPN_notification(raw)
    uri = URI.parse('https://ipnpb.paypal.com/cgi-bin/webscr?cmd=_notify-validate')
    http = Net::HTTP.new(uri.host, uri.port)
    http.open_timeout = 60
    http.read_timeout = 60
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    http.use_ssl = true
    response = http.post(uri.request_uri, raw,
                         'Content-Length' => "#{raw.size}",
                         'User-Agent' => "My custom user agent"
                       ).body
  end


end
