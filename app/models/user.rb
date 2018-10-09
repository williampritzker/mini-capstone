class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
has_many :cartedproducts
has_many :orders, through: :cartedproducts
has_many :products, through: :cartedproducts

end
