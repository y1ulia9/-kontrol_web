class Company < ApplicationRecord

has_many :products, through: :costs

end
