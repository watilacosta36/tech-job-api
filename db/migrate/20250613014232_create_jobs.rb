class CreateJobs < ActiveRecord::Migration[8.0]
  def change
    create_table :jobs do |t|
      t.references :company, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description, null: false
      t.text :full_description
      t.integer :salary_min
      t.integer :salary_max
      t.string :salary_currency, null: false
      t.integer :employment_type, null: false
      t.integer :experience_level, null: false
      t.string :location, null: false
      t.boolean :is_remote
      t.boolean :is_active, default: true
      t.datetime :expires_at

      t.timestamps
    end
  end
end
