require "test_helper"

class RegistroDriverControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registro_driver_index_url
    assert_response :success
  end
end
