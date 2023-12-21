class RemoveColumnsFromJobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :job_note, :text
    remove_column :jobs, :job_task, :text
  end
end
