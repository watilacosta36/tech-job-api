class RemoveResumeUrlFromJobApplications < ActiveRecord::Migration[8.0]
  def change
    remove_column :job_applications, :resume_url, :string
  end
end
