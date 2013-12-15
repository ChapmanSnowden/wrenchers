FactoryGirl.define do
	factory :bike do
		sequence(:name) { |n| "bike#{n}" }
		sequence(:description) { |n| "Ducati Monster" }
		current_mileage "1234"
	end
end
