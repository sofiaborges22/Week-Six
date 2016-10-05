class Bid < ApplicationRecord
  belongs_to :product
  validate :new_bid_must_be_above_min_bid, :new_bid_must_be_above_highest_bid, on: :create

  def new_bid_must_be_above_min_bid
  	@new_bid = product.bids.new(user_id: user_id, amount: amount)
    @min = @new_bid.product.min_bid
  	if @new_bid < @min
  		errors.add(:new_bid, "cannot be lower than the price")
  	end
  end

  def new_bid_must_be_above_highest_bid
  	@new_bid = product.bids.new(user_id: user_id, amount: amount)
  	if @new_bid < Bid.last
  		errors.add(:new_bid, "cannot be lower than the highest bid")
  	end
  end
end
