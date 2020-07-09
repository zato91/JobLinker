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


luis = User.create(name: "Luis", email:"123@gmail.com", password:"123")
jim = User.create(name: "Jim", email:"jim@gmail.com", password:"123")
pam = User.create(name: "Pam", email:"pam@gmail.com", password:"123")
michael = User.create(name: "Mike", email:"mike@gmail.com", password:"123")
dwight = User.create(name: "Dwight", email:"dwight@gmail.com", password:"123")
kevin = User.create(name: "Kevin", email:"kevin@gmail.com", password:"123")
creed = User.create(name: "Creed", email:"creed@gmail.com", password:"123")

apple = Company.create(name:"Apple", location:"Califorina", description:"Makes simple use products.",industry:"Tech")
amazon = Company.create(name:"Amazon", location:"Califorina", description:"Customer centric company.",industry:"Tech")
google = Company.create(name:"Microsoft", location:"Califorina", description:"Connect the world.",industry:"Tech")
jnj = Company.create(name:"Johnson & Johnson", location:"New Jersey", description:"Improve the lives of customers.",industry:"Healthcare")
un = Company.create(name:"United Nations", location:"New York", description:"Unite the world.",industry:"Politics")
united = Company.create(name:"United Airlines", location:"Califorina", description:"Fly the world.",industry:"Airline")
deloitte = Company.create(name:"Deloitte", location:"New York", description:"Making your business run better.",industry:"Financial")


usercompany1 = UserCompany.create(user_id:luis.id,company_id: apple.id)
uc_jim_amazon = UserCompany.create(user_id:jim.id,company_id: amazon.id)
uc_pam_google = UserCompany.create(user_id:pam.id,company_id: google.id)
uc_michael_jnj = UserCompany.create(user_id:michael.id,company_id: jnj.id)
uc_kevin_un = UserCompany.create(user_id:kevin.id,company_id: un.id)
uc_dwight_united = UserCompany.create(user_id:dwight.id,company_id: united.id)
uc_creed_deloitte = UserCompany.create(user_id:creed.id,company_id: deloitte.id)


post1 = Post.create(title:"promotion", message:"Super happy new position", user: luis)

dwight_post = Post.create(title:"Identity Theft", message:"Identity Theft is not a joke!", user: dwight)
kevin_post = Post.create(title:"New Day", message:"Body strong, sleep big last night.", user: kevin)
pam_post = Post.create(title:"Dundies", message:"Just won a Dundies Award!", user: pam)
jim_post = Post.create(title:"Marriage Annoucement", message:"I am getting married!", user: jim)
dwight_post = Post.create(title:"The Trio", message:"Bears, Beats, Battlestar Galactica.", user: dwight)
michael_post = Post.create(title:"Inspirational", message:"Would I rather be feared or loved? Easy. Both. I want people to be afraid of how much they love me.", user: michael)

creed_post = Post.create(title: "Made a New Blog", message: "Launched my new blog. www.creedthoughts.gov.www/creedthoughts - check it out.", user: creed)


apple_job = JobListing.create(title:"Web Developper", description:"Front-End Design",salary:"100,000",company: apple)
amazon_job = JobListing.create(title:"Operations Analyst", description:"Oversee warehouse operations",salary:"75,000",company: amazon)
google_job = JobListing.create(title:"IT Associate", description:"Server management",salary:"85,000",company: google)
jnj_job = JobListing.create(title:"Researcher", description:"Research & Development on new health product",salary:"100,000",company: jnj)
un_job = JobListing.create(title:"Policy Analyst", description:"Specialize in Healthcare and Conflict resolution",salary:"70,000",company: un)
united_job = JobListing.create(title:"Airline Controller", description:"Oversee incomong and outgoing flights",salary:"90,000",company: united)
deloitte_job = JobListing.create(title:"Consultant", description:"Business and Technology Consultant",salary:"90,000",company: deloitte)

skill1 = Skill.create(name:"Ruby")
skill2 = Skill.create(name:"Project Management")
skill3 = Skill.create(name:"Design")
skill4 = Skill.create(name:"Excel")
skill5 = Skill.create(name:"Leadership")
skill6 = Skill.create(name:"Crisis Management")
skill7 = Skill.create(name:"Public Speaking")
skill8 = Skill.create(name:"Communication")
skill9 = Skill.create(name:"Sales")
skill10 = Skill.create(name:"Organization")
skill11 = Skill.create(name:"Teamwork")
skill12 = Skill.create(name:"Critical Thinking")
skill13 = Skill.create(name:"Emotional Intelligence")
skill14 = Skill.create(name:"Negotiation")
skill15 = Skill.create(name:"Marketing")
skill16 = Skill.create(name:"Research")
skill17 = Skill.create(name:"Writing")
skill18 = Skill.create(name:"Foreign Languages")
skill19 = Skill.create(name:"Administration")
skill20 = Skill.create(name:"Analytics")

User.all.each do |user|
    Skill.all.sample(3).each do |skill|
        UserSkill.find_or_create_by(user_id: user.id, skill_id: skill.id)
    end
end 

JobListing.all.each do |jl|
    Skill.all.sample(3).each do |skill|
        JobSkill.find_or_create_by(job_listing_id: jl.id, skill_id: skill.id)
    end
end 

