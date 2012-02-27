class Transfer < ActiveRecord::Base

	belongs_to :donor, :class_name => "Account"
	belongs_to :recipient, :class_name => "Account"

end
