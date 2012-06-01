class BanksController < ApplicationController
  
  def index
    @banks = Bank.find(:all, :include => [:accounts])
    @earnings = Earning.sum('value')
  end
  
  def new
    @bank = Bank.new
  end

  def create
   @bank = Bank.new(params[:bank])

	 @bank.save
  end
  
  def edit
  	@bank = Bank.find(params[:id])
  end
  
  def destroy
  	@bank = Bank.find(params[:id])
  	@bank.destroy
  	
  	redirect_to :action => 'index'
  end

end
