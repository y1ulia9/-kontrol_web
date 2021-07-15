class Order < ApplicationRecord
  belongs_to :costs
  belongs_to :user
validates :amount, :presence => true
end
