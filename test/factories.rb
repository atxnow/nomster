FactoryGirl.define do
  factory :user do
    sequence :email do |n| "nomster#{n}@gmail.com"
    end
    password "nomster123"
    password_confirmation "nomster123"
	end

  factory :place do
    name "TLP Taco"
    address "99 Suhan Dr. Irwin PA 15642"
    description "Small and quiet place"
    latitude(40.364276)
    longitude(-79.675445)
    association :user
  end
  factory :comment do
  	message "Out of guac?!"
    rating "1_star"
    association :user
    association :place
  end
end