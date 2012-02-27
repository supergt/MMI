class AccountsController < ApplicationController

  helper_method :sort_column, :sort_direction

  def index
    @accounts = Account.all
  end
	
  def show
  	@account = Account.find(params[:id])
  	@expenses = @account.expenses.order(sort_column + " " + sort_direction)
  	@earnings = Earning.order(sort_column + " " + sort_direction)
  	@allocator = @account.allocator
  end
	
  def new
    @account = Account.new
    @allocator = Allocator.new
  end

  def create
    @account = Account.new(params[:account])
    @account.save
    @allocator = @account.build_allocator(:percentage => params[:percentage])
    @allocator.save
  end
  
  def edit
  	@account = Account.find(params[:id])
    @allocator = @account.allocator
  end
  
  def update
    @account = Account.find(params[:id])
    @allocator = @account.allocator
    @account.update_attributes(params[:account])
    @allocator.update_attributes(:percentage => params[:percentage])
  end
  
  def destroy
  	@account = Account.find(params[:id])
  	@account.destroy
  end

  private
  
  def sort_column
    Expense.column_names.include?(params[:sort]) ? params[:sort] : "date"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "DESC"
  end
end
