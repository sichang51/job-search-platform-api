require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/users.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal User.count, data.length
  end

  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: {
                            user_name: "Test",
                            user_email: "test@test.com",
                            password: "password",
                          }
      assert_response 200
    end
  end

  test "show" do
    get "/users/#{User.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_name", "user_email", "password_digest", "created_at", "updated_at", "user_phn_num", "user_bio", "user_linkedin_url", "user_twitter_handle", "user_website_url", "user_resume_url", "user_github_url", "user_photo_url"], data.keys
  end

  test "update" do
    user = User.first
    patch "/users/#{user.id}.json", params: { user_name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["user_name"]
  end

  test "destroy" do
    assert_difference "User.count", -1 do
      delete "/jobs/#{User.first.id}.json"
      assert_response 200
    end
  end
end
