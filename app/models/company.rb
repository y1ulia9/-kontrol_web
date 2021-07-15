class Company < ApplicationRecord
  has_many :costs
  validates :name, :presence => true
end
