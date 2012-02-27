class AllocatorsController < ApplicationController

	def index
		@allocators = Allocator.all
	end
	
  def new
    @allocator = Allocator.new
  end

  def create
    @allocator = Allocator.new(params[:allocator])

    @allocator.save
  end
	
  def destroy
    @allocator = Allocator.find(params[:allocator])
    @allocator.destroy
  end

end
