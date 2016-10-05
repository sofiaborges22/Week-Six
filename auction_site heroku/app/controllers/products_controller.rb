class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @product = Product.find_by(id: params[:id])
    winner_id = Bid.last.user_id
    winner_id = User.find_by(id: winner_id).name
    @winner = winner_id
  end

  def new
    @user = User.find_by(id: params[:user_id])
    @new_product = Product.new
  end

  def create
    user = User.find_by(id: params[:user_id])
    @product = user.products.new(product_params)
    if product.save
      redirect_to user_products_path(user)
    else 
      render text => "Product could not be saved"
    end

  end

  def destroy
  end

  private
  def product_params #STRONG PARAMETERS: Grabs all the parameters for product that would normally go in the create action and inserts into this method, that simplifies the params code for a product
    params.require(:product).permit(:title, :description, :min_bid, :deadline)
  end
  #when you have a nested path and you need to connect another variable into the form, you create the instance variable, and you join it by the "user.product" example, and you use strong params
end
