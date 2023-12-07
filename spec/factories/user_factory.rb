FactoryBot.define do
  factory :user do
    first_name { generate(:first_name) }
    last_name { generate(:last_name) }
    email { generate(:unique_email) }
    password { generate(:password) }
  end
end
