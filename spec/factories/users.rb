FactoryBot.define do
  factory :user do
    email { 'email@email.com' }
    password { 'mypassword' }
    affiliation { 'liberal' }
  end
end
