class ItemsController < ApplicationController
  def create


  		@item = Item.where(:name => params[:item][:name]).first_or_initialize
  		@prices = @item.prices.new
  		@prices.item_id = @item
  		@prices.price_low = params[:prices][:price_low]
  		@prices.price_high = params[:prices][:price_high]

  		if @item.save

  			redirect_to :back

  		end
  
  end

  def update
  end


  private
  
end
