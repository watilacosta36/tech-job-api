class CreateJobApplications < ActiveRecord::Migration[8.0]
  def change
    create_table :job_applications do |t|
      t.references :job, null: false, foreign_key: true
      t.string :candidate_name, null: false
      t.string :candidate_email, null: false
      t.string :candidate_phone, null: false
      t.string :resume_url, null: false
      t.text :cover_letter
      t.integer :status, null: false
      t.datetime :applied_at

      t.timestamps
    end
  end
end
