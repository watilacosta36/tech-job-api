class CreateJobTags < ActiveRecord::Migration[8.0]
  def change
    create_table :job_tags do |t|
      t.references :job, null: false, foreign_key: true
      t.string :tag, null: false

      t.timestamps
    end
  end
end
