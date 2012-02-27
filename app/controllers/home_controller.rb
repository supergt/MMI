class HomeController < ApplicationController

	def index

		@accounts = Account.find(:all, :include => [:allocator, :expenses, :in_transfers, :out_transfers])
		@earnings = Earning.sum('value')
		@expenses = Expense.sum('value')
		@banks = Bank.all
		@totalAllocations = Allocator.sum('percentage')

		respond_to do |format|
			format.js
			format.html
		end
	end
end
