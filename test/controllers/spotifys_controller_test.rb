require 'test_helper'

class SpotifysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spotifys_index_url
    assert_response :success
  end

end
