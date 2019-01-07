require 'test_helper'

class ExplicitControllerTest < ActionDispatch::IntegrationTest
  test "should get in" do
    get explicit_in_url
    assert_response :success
  end

end
