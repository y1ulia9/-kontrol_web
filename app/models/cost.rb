class Cost < ApplicationRecord
  belongs_to :company
  belongs_to :product
  validates :cost, :presence => true
end
