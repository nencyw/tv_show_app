require 'test_helper'

class ChannelShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get channel_shows_index_url
    assert_response :success
  end

end
