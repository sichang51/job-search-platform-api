require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/companies.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Company.count, data.length
  end
end
