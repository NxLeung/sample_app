namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Example User", email: "example@railstutorial.org", password: "foobar2u", password_confirmation: "foobar2u", admin: true)
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@railstutorial.org"
			password = "password2u"
			User.create!(name: name, email: email, password: password, password_confirmation: password)
		end
	end
end