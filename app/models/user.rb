class User < ApplicationRecord
     has_many :user_companies
     has_many :companies, through: :user_companies
     has_many :posts
     has_many :user_skills
     has_many :skills, through: :user_skills
     has_one_attached :image

     has_secure_password

     #validates :name, presence: true, uniqueness: true
     #validates :email, presence: true, uniqueness: true
     #validates :password, presence: true, uniqueness: true

end
