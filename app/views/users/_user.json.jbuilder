json.id user.id
json.user_name user.user_name
json.user_email user.user_email
json.created_at user.created_at
json.updated_at user.updated_at
json.user_phn_num user.user_phn_num
json.user_bio user.user_bio
json.user_linkedin_url user.user_linkedin_url
json.user_twitter_handle user.user_twitter_handle
json.user_website_url user.user_website_url
json.user_resume_url user.user_resume_url
json.user_github_url user.user_github_url
json.user_photo_url user.user_photo_url
json.user_fname user.user_fname
json.user_lname user.user_lname
json.carted_jobs user.carted_jobs do |carted_job|
  json.job carted_job.job
  json.company carted_job.company
  json.id carted_job.id
end
