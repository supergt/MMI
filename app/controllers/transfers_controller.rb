class TransfersController < ApplicationController

  def index
		@transfers = Transfer.find(:all, :include => [:donor, :recipient], :order =>"created_at DESC")
	end
	
  def new
    @transfer = Transfer.new
  end

  def create
    @transfer = Transfer.new(params[:transfer])

  	@transfer.save
  end
	
	def destroy
    	@transfer = Transfer.find(params[:id])
    	@transfer.destroy
    	
    	index
  	end
end
