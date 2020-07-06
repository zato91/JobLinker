# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Company.destroy_all
JobListing.destroy_all
JobSkill.destroy_all
Post.destroy_all
Skill.destroy_all
UserCompany.destroy_all
UserSkill.destroy_all


luis = User.create(name: "Luis", email:"123@gmail.com", password_digest:"123")
apple = Company.create(name:"Apple", location:"Califorina", description:"makes simple use products",industry:"Tech")
usercompany1 = UserCompany.create(user_id:luis.id,company_id: apple.id)


post1 = Post.create(title:"promotion", message:"Super happy new position",user: luis)
job1 = JobListing.create(title:"web developper", description:"code things",salary:"100k",company: apple)
skill1 = Skill.create(name:"Ruby")
skill2 = Skill.create(name:"Project managemnt")
skill3 = Skill.create(name:"Design")



