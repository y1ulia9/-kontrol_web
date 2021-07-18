class ProductControllerTest < ActiveSupport::TestCase

  test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:products)
  end


end
