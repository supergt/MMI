class Allocator < ActiveRecord::Base

	validates_presence_of :percentage, :account_id

	belongs_to :account

end
