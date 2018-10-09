class Image < ApplicationRecord

  # def products
  #   Product.where(supplier_id: id) #returns an array of products
  # end

belongs_to :product

end