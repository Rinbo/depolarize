
Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

Then("I should see a {string} element") do |element|
  expect(page).to have_css element
end

Then("I am on the login page") do
  expect(current_path).to eq user_session_path
end

Then("I should be redirected to the news feed") do
  expect(current_path).to eq feeds_path
end

Then("I should be redirected to the welcome page") do
  expect(current_path).to eq root_path
end