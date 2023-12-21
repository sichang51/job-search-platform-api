require "test_helper"

class JobsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/jobs.jsonb"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Job.count, data.length
  end

  test "create" do
    assert_difference "Job.count", 1 do
      post "/jobs.json", params: { company_id: Company.first.id, job_title: "Full-Stack Developer", job_description: "Are you passionate about cutting-edge technologies and eager to make a significant impact at an early-stage startup? ZeroDFx is on the lookout for talented engineers who share our enthusiasm for tackling technical challenges and pushing the boundaries of innovation.", job_url: "https://www.test.com", job_type: "Full-Time", job_yrs_exp: "5 - 7 years", job_location: "Chicago, IL", job_salary_range: "$100,000 - $125,000" }
      assert_response 200
    end
  end
end