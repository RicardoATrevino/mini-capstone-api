class Product < ApplicationRecord
  def tax
    price * 0.09
  end

  def is_discounted?
    price <= 10
  end

  def total
    price + tax
  end
end
