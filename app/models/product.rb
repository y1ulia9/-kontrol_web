class Product < ApplicationRecord

  has_many :companies, through: :costs
  

end
