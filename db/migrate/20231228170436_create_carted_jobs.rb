class CreateCartedJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_jobs do |t|

      t.timestamps
    end
  end
end
