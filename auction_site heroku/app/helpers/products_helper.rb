module ProductsHelper
	def show_name(user_id)
	 (User.find_by(id: user_id)).name 
	end

	def show_product(product_id)
		(Product.find_by(id: product_id)).title
	end

	def show_bid(bid_id)
		(Bid.find_by(id: bid_id)).user_id
	end

end
