class User < ApplicationRecord
     has_many :user_companies
     has_many :companies, through: :user_companies
     has_many :posts
     has_many :user_skills
     has_many :skills, through: :user_skills
end
