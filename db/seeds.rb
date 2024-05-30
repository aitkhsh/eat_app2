# Search foods date
foods = [
  { genre:'Cafe', mood:'Chill out' },
  { genre:'Korea', mood:'Hot' },
  { genre:'Fast food', mood:'Punchy' },
  { genre:'Japanese', mood:'Relaxing' },
  { genre:'Italian', mood:'Holiday' },
  { genre:'French', mood:'Gorgeous' }
]
Food.create(foods)

# Create main an user
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:        true,
             activated: true,
             activated_at: Time.zone.now)

#Create addtional users
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

#Create microposts of users
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end