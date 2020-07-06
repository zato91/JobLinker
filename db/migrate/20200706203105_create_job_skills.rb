class CreateJobSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :job_skills do |t|
      t.integer :job_listing_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
