class EarningsController < ApplicationController

  helper_method :sort_column, :sort_direction

	def index
		@earnings = Earning.order(sort_column + " " + sort_direction).paginate(:per_page => 10, :page => params[:earnings_page])

    respond_to do |format|
      format.js
    end
	end
	
  def new
    @earning = Earning.new
  end

  def create
    @earning = Earning.new(params[:earning])
    @earning.save
  end
	
	def destroy
    	@earning = Earning.find(params[:id])
    	@earning.destroy
    	
    	respond_to do |format|
        format.js
      end
  end

  private
  
  def sort_column
    Expense.column_names.include?(params[:sort]) ? params[:sort] : "date"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "DESC"
  end

end
