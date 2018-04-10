class HomeController < ApplicationController
  # layout 'layout_basic'
  layout false, :only => :coming_soon 
  
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

  def coming_soon    
  end

  # def tryit
    
  #    # render :layout => false
  # end

  def book_online_detail
    @book_online=BookOnlineDetail.new
  end

  def call_me_back
    CallMeBackDetail.create(:phone_number=>params["phone_number"])
    flash[:notice] = "Thanks for your request. We will get back to you shortly."
    redirect_to root_path

    # respond_to do |format|
    #         format.html {  }
    #         format.json { render :json =>{status: 200,notice_status:"true"}  }
    # end
    # admin_message = "You have got a request for call back from " + params[:phone_number]  
    # client_message = "Hi Your call request has been sent to MoveCo. You will reciever a call shortly." 
    # account_sid = 'ACf99556a670b43cf8a537c9ce6a46528f'
    # auth_token = 'a4e4511951bf5bbb8d3b2b1462291647'
    # @client = Twilio::REST::Client.new account_sid, auth_token
        # begin
        #   debugger
        # # Client
        # reciever_number = "+" + params[:phone_number]
        # @client.api.account.messages.create({
        #   :from => '+14087174900',
        #   :to => reciever_number,
        #   :body => client_message,
        # })
        # # Admin
        # @client.api.account.messages.create({
        #   :from => '+14087174900',
        #   :to => '+919463522359',
        #   :body => admin_message,
        # })
        

        # respond_to do |format|
        #     format.html {  }
        #     format.json { render :json =>{status: 200,notice_status:"true"}  }
        # end

        # rescue => e
        #   respond_to do |format|
        #     format.html {  }
        #     format.json { render :json =>{status: 200,notice_status:"false"}  }

        # end

    # end

        
  end





end
