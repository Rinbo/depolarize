Given("I am on the welcome page") do
  visit root_path
end

Then("I click on {string}") do |link_name|
  click_link link_name
end

