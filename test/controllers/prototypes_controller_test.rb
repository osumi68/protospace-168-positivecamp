require "test_helper"

class PrototypesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "should get index" do
    get prototypes_index_url
    assert_response :success
  end
end
