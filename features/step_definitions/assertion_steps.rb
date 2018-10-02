
Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

Then("I should be on the welcome page") do
  expect(current_url).to eq "https://www.google.se/"
end