require "test_helper"

class OrderTest < ActiveSupport::TestCase


  test "should not save Order without amount" do
    order = Order.new
    order.user_id = User.last.id
    order.delivered = true
    assert_not order.save
  end

  test "should not save Order without cost" do
    order = Order.new
    order.user_id = User.last.id
    order.delivered = true
    order.amount = 1
    assert_not order.save
  end




end
