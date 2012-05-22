class ExpensesController < ApplicationController

  helper_method :sort_column, :sort_direction
	
  def index

    @expenses = Expense.find(:all, :include => [:account], :order => sort_column + " " + sort_direction).paginate(:per_page => 10, :page => params[:expenses_page])
    respond_to do |format|
      format.js
    end
	end
	
  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(params[:expense])

  	@expense.save
  end
	
	def destroy
    	@expense = Expense.find(params[:id])
    	@expense.destroy
    	
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
