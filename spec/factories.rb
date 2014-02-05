FactoryGirl.define do
	factory :user do
		name		"Michael Hartl"
		email		"michael@example.com"
		password	"foobar2u"
		password_confirmation	"foobar2u"
	end
end
