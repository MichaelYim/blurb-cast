namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "M Yeezy",
                 email: "myeezy@hotmail.com",
                 password: "youngmoney",
                 password_confirmation: "youngmoney",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end