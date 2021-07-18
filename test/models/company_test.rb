require "test_helper"

class CompanyTest < ActiveSupport::TestCase

    test "should not save Product without name" do
      p = Company.new
      assert_not p.save
    end

end
