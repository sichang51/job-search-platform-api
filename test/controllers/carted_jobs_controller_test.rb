require "test_helper"

class CartedJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(user_name: "Test", user_email: "test@test.com", password: "password")
    @company = Company.create(co_name: "Company", co_location: "test city", co_description: "tech company test")
    @job = Job.create(company_id: @company.id, job_title: "test job", job_description: "test job as software developer")
    @carted_job = CartedJob.create(user_id: @user.id, job_id: @job.id, status: "carted")
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/carted_jobs.json",
      headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal 1, data.length
  end

  test "create" do
    assert_difference "CartedJob.count", 1 do
      post "/carted_jobs.json",
        params: { job_id: @job.id, company_id: @company.id },
        headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200

      data = JSON.parse(response.body)
      assert_equal "carted", data["status"]
      assert_equal 2, data["quantity"]
    end
  end

  test "destroy" do
    delete "/carted_jobs/#{@carted_job.id}.json",
      headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    # "refreshes carted_product, i.e reloads it from the test db, with updated info"
    @carted_job.reload
    assert_equal "removed", @carted_job.status
  end
end
