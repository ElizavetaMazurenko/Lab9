require 'test_helper'

class ImplicitControllerTest < ActionDispatch::IntegrationTest
  test "should get in" do
    get implicit_in_url
    assert_response :success
  end

end
