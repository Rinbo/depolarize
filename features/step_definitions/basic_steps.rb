Given("I am on the welcome page") do
  visit root_path
end

Given("I am on the news feed") do
  visit feeds_path
end

Given("That I am on the sign up page") do
  visit new_user_registration_path
end

Given("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content 
end

Given("I click on the {string} link") do |link|
  click_on link
end

When("I click on the {string} button") do |button|
  click_button button
end

Given("the following registered users exist") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end   