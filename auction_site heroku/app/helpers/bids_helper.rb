module BidsHelper
	def show_name(user_id)
	 (User.find_by(id: user_id)).name 
	end

	def show_product(product_id)
		(Product.find_by(id: product_id)).title
	end
end
#Use these to help you with the view when you need to remove logic from the view