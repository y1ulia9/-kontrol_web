require "test_helper"

class ProductTest < ActiveSupport::TestCase

  test "should not save Product without name" do
    p = Product.new
    p.product_group_id=1
    assert_not p.save
  end


end
