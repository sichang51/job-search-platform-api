class RemoveJobActiveFromJobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :job_active, :string
  end
end
