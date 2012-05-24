class Expense < ActiveRecord::Base

	validates_presence_of :name, :value, :date

	belongs_to :account

end
