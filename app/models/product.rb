class Product < ApplicationRecord
  
  # def supplier
  #   Supplier.find_by(id: supplier_id) #returns a supplier hash
  # end
 
has_many :cartedproducts
has_many :orders, through: :cartedproducts
has_many :users, through: :cartedproducts
  
  
  has_many :category_products
  has_many :categories, through: :category_products
 
  belongs_to :supplier
  has_many :images
  validates :name, length: {maximum: 40}
  # validates :name, uniqueness: true
  validates :name, presence: true
  
  validates :price, presence: true
  validates :price, numericality: true
  validates :price, numericality: {greater_than: 0}

  # validates :image_url, presence: true

  # validates :description, length: {in: 6..500}


  def is_discounted?
   price <= 10
  end

  def tax
    price.to_i * 0.09
  end

  def total
    price + tax
  end

end
