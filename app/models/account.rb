class Account < ActiveRecord::Base

	attr_accessible :name, :bank_id, :image

	validates_presence_of :name, :bank_id

	has_many :expenses, :dependent => :destroy
	has_one :allocator, :dependent => :destroy
	belongs_to :bank

	has_many :out_transfers, :class_name => "Transfer", :foreign_key => "donor_id"
	has_many :in_transfers, :class_name => "Transfer", :foreign_key => "recipient_id"
	
	mount_uploader :image, ImageUploader

end
