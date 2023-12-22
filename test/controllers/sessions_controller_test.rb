require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    post "/users.json", params: { user_name: "Test", user_email: "test@test.com", password: "password" }
    post "/sessions.json", params: { user_email: "test@test.com", password: "password" }
    assert_response 201

    data = JSON.parse(response.body)
    assert_equal ["jwt", "user_email", "user_id"], data.keys
  end
end
