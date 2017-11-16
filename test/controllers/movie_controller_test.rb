require 'test_helper'

class MovieControllerTest < ActionDispatch::IntegrationTest
  test "should get movie" do
    get movie_movie_url
    assert_response :success
  end

end
