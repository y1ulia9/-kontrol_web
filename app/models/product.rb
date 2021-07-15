class Product < ApplicationRecord

  validates :name, :presence => true
  belongs_to :product_group

end
