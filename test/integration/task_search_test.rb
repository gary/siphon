require "test_helper"

class TaskSearchTest < ActionDispatch::IntegrationTest
  test "full text search" do
    get "/tasks/searches", params: { query: "foo" }

    assert_response :success
    assert_not_in_body tasks(:fourth).body
  end
end
