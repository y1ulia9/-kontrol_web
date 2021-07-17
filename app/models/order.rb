class Order < ApplicationRecord
  belongs_to :cost
  belongs_to :user
validates :amount, :presence => true
end
