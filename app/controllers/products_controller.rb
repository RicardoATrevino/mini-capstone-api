class ProductsController < ApplicationController
  def index
    @product = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  #@product = Product.find_by(id: params["id"])

  #shows an array ^ notice the s

  # does not show as an array ^ no s

end
