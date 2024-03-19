class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product sent into the abyss successfully!" }
  end

  #@product = Product.find_by(id: params["id"])
  # #name: "Instant Espresso", price: "5", image_url: "htt
  # ps://target.scene7.com/is/image/Target/GUEST_1eabf89f-651a-40cc-89e3-365cb8e3f6b
  # 3?wid=488&hei=488&fmt=pjpeg", description: "dehydrated espresso, mix with hot water for instant espresso"
  #shows an array ^ notice the s

  # does not show as an array ^ no s

end
