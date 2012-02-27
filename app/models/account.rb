class Account < ActiveRecord::Base

	validates_presence_of :name, :bank_id

	has_many :expenses
	has_one :allocator
	belongs_to :bank

	has_many :out_transfers, :class_name => "Transfer", :foreign_key => "donor_id"
	has_many :in_transfers, :class_name => "Transfer", :foreign_key => "recipient_id"
	
end
