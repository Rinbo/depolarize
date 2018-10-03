
Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

Then("I should see a {string} element") do |element|
  expect(page).to have_css element
end