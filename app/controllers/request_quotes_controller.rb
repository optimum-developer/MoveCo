class RequestQuotesController < ApplicationController
	# def new
	# end
  def index
  end

	def create
        @new_req=RequestQuote.new(req_quote_params)
        if @new_req.save
          @new_req.update(:unique_quote_number=>"RQ#{@new_req.id}")
          respond_to do |format|
              format.json { render :json =>{status: 200,status_notify:"true",user: @new_req.id}  }
              format.html { }
          end
          SendEmailUserAdminJob.perform_later(@new_req.id)
        else
            respond_to do |format|
                format.json { render :json =>{status: 200,status_notify:"false"}  }
                format.html { }
            end
        end
  	end

    def new
        @new_req=RequestQuote.new
    end


  	private
	  def req_quote_params
	    params.require(:request_quote).permit(:name,:email,:date_to_move,:phone_number,:description,:move_from,:move_to)
	  end
	# def create
	# end
end
