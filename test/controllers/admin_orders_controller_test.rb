require "test_helper"

class AdminOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_orders_show_url
    assert_response :success
  end
end
