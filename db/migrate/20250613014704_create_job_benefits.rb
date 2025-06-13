class CreateJobBenefits < ActiveRecord::Migration[8.0]
  def change
    create_table :job_benefits do |t|
      t.references :job, null: false, foreign_key: true
      t.string :benefit, null: false

      t.timestamps
    end
  end
end
