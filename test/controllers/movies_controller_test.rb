require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get movies_Index_url
    assert_response :success
  end
end
