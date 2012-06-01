class Transfer < ActiveRecord::Base

	belongs_to :donor, :class_name => "Account"
	belongs_to :recipient, :class_name => "Account"

	validates_presence_of :value

end
