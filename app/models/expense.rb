class Expense < ActiveRecord::Base

	validates_presence_of :name, :value

	belongs_to :account

end
