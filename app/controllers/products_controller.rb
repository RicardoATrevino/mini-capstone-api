class ProductsController < ApplicationController
  def display_products_method
    @products = Product.all
    render template: "products/index"
  end

  def single_product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  #@product = Product.find_by(id: params["id"])

  #shows an array ^ notice the s

  def espresso_method
    @product = Product.find_by(name: "Instant Espresso")
    render template: "products/show"
  end

  # does not show as an array ^ no s

  def criossant_method
    @product = Product.find_by(name: "Croissant")
    render template: "products/show"
  end

  def coffee_method
    @product = Product.find_by(name: "Coffee")
    render template: "products/show"
  end
end
