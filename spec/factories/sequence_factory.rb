FactoryBot.define do
  sequence(:first_name) { Faker::Name.first_name }
  sequence(:last_name) { Faker::Name.last_name }
  sequence(:unique_email) { |n| "#{n}#{Faker::Internet.unique.email(domain: "meme.com")}" }
  sequence(:password) { "snipe.HACKSAW.fish" } # make sure password is valid
end
