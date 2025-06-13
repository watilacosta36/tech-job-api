class CreateJobRequirements < ActiveRecord::Migration[8.0]
  def change
    create_table :job_requirements do |t|
      t.references :job, null: false, foreign_key: true
      t.string :requirement, null: false
      t.boolean :is_mandatory, default: true

      t.timestamps
    end
  end
end
