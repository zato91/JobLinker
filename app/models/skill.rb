class Skill < ApplicationRecord
    has_many :job_skills
    has_many :job_listings, through: :job_skills
    has_many :user_skills
    has_many :users, through: :user_skills
end
