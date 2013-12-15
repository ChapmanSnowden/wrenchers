FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "user#{n}" }
		sequence(:email) { |n| "email#{n}@example.com" }
		password 'password'
	end
end
