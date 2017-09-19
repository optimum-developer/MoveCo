class HomeController < ApplicationController
  # layout 'layout_basic'

  
  def index
    @new_req=RequestQuote.new
  end

  def about_us
  end

  def service
    @new_req=RequestQuote.new
  end

  def  service_residential_moving  
  end

  def service_office_moving
  end
 
  def service_piano_moving
  end
  
  def service_pool_moving
  end
  
  def service_interstate_moving
  end

  def service_packing_moving
  end     
  
  def service_secure_storage_moving
  end      
    
  def service_single
  end

  def free_quote
  end

  def plain_moving
  end

  def shortcodes_teasers 
  end

  def shortcodes_buttons
  end

  def shortcodes_socialicons
  end

  def shortcodes_tabs
  end

  def shortcodes_bootstrap

  end

  def shortcodes_typography
  end

  def shortcodes_widgets
  end

  def shortcodes_animation
  end

  def shortcodes_icons
  end

  def contact
    @new_contact=Contact.new
  end

  def why_us
  end

  def book_online_detail
    @book_online=BookOnlineDetail.new
  end

  def call_me_back
    admin_message = "You have got a request for call back from " + params[:name] + "(" + params[:phone_number] + ")" + 
    client_message = "Hi" + params[:name] + "Your call request has been sent to MoveCo. You will reciever a call shortly." 
    account_sid = 'ACb0f41764355db14c3a603052c904b64a'
    auth_token = 'f77af0f7227e941ef1d74f8d419de2a9'
    @client = Twilio::REST::Client.new account_sid, auth_token
        begin
        # Client
        @client.api.account.messages.create({
          :from => '+16783299584',
          :to => params[:phone_number],
          :body => client_message,
          :media_url => 'https://climacons.herokuapp.com/clear.png'
        })
        # Admin
        @client.api.account.messages.create({
          :from => '+16783299584',
          :to => '+919417537249',
          :body => admin_message,
          :media_url => 'https://climacons.herokuapp.com/clear.png'
        })
        redirect_to root_path
        rescue => e
          redirect_to root_path
        end
  end

end
