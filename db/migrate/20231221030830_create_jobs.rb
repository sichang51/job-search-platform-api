class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.string :job_title
      t.text :job_description
      t.string :job_url
      t.string :job_type
      t.string :job_yrs_exp
      t.string :job_location
      t.string :job_active
      t.string :job_salary_range
      t.text :job_note
      t.text :job_task

      t.timestamps
    end
  end
end
