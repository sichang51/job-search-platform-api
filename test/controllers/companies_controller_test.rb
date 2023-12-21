require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/companies.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Company.count, data.length
  end

  test "create" do
    assert_difference "Company.count", 1 do
      post "/companies.json", params: { co_name: "Meta", co_logo: "https://upload.wikimedia.org/wikipedia/commons/a/ab/Meta-Logo.png", co_location: "Menlo Park, CA", co_description: "Meta Platforms, Inc. operates as a social technology company. The Company builds applications and technologies that help people connect, find communities, and grow businesses." }
      assert_response 200
    end
  end
end
