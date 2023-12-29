class CreateCartedJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_jobs do |t|
      t.integer :user_id
      t.integer :company_id
      t.integer :job_id
      t.timestamps
    end
  end
end
