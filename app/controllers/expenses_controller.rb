class ExpensesController < ApplicationController

  helper_method :sort_column, :sort_direction
	
  def index

    puts 'Index...'

    num_per_page = 5

    @expenses = Expense.find(:all, :include => [:account], :order => sort_column + " " + sort_direction).paginate(:per_page => num_per_page, :page => params[:expenses_page])
    respond_to do |format|
      format.js
    end
	end
	
  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(params[:expense])

  	if @expense.save
      flash[:notice] = "Successfully created expense!"
    else
      flash[:error] = "Error creating expense."
    end
  end
	
	def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    index
 	end

  private
  
  def sort_column
    Expense.column_names.include?(params[:sort]) ? params[:sort] : "date"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "DESC"
  end

end
