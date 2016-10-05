class BidsController < ApplicationController
  def index
  	product = Product.find_by(id: params[:id])
  	@bids = product.bids
    @bids.order("amount :desc")
  end

  def new
  end

  def create
  	amount = params[:amount]
  	user_id = (User.find_by(email: params[:email])).id
  	product = Product.find_by(id: params[:id])
  	@new_bid = product.bids.new(user_id: user_id, amount: amount)
    @min = @new_bid.product.min_bid
	  	if @new_bid.save
	  		redirect_to product_bids_all_path(product.id)
	  	else
	  		render text => "Bid cannot be made"
	  	end
  end

end

#Strong params are only for form_for