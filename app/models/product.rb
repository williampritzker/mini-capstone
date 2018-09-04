class Product < ApplicationRecord

  def is_discounted?
    if price < 2
      true
    else
      false
    end
  end

  def tax
    price.to_i * 0.09
  end

  def total
    price + tax
  end

end
