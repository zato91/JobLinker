class CreateJobListings < ActiveRecord::Migration[6.0]
  def change
    create_table :job_listings do |t|
      t.string :title
      t.string :description
      t.integer :company_id
      t.string :salary

      t.timestamps
    end
  end
end
