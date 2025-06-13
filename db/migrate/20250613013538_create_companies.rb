class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :logo_url
      t.string :website
      t.string :industry
      t.integer :size
      t.string :location, null: false

      t.timestamps
    end
  end
end
