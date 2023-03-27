require "test_helper"

class HerosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get heros_index_url
    assert_response :success
  end
end
