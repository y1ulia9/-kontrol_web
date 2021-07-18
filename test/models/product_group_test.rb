require "test_helper"

class ProductGroupTest < ActiveSupport::TestCase

  test "should not save ProductGroup without name" do
    p = ProductGroup.new
    assert_not p.save
  end

end
