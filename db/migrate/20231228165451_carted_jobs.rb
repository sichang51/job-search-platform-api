class CartedJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :cartedjobs do |t|
      t.integer "user_id"
      t.integer "company_id"
      t.integer "job_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
