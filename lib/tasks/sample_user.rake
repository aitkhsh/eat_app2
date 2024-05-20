namespace :db do
  desc "Create sample users"
  task create_sample_users: :environment do
    User.create!(
      name: "Example User",
      email: "example@railstutorial.org",
      password: "foobar",
      password_confirmation: "foobar",
      admin: true
    )

    # 追加のユーザーをまとめて生成する
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name:  name,
                    email: email,
                    password:              password,
                    password_confirmation: password)
    end
  end
end
