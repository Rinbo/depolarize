Given("I visit the donation page") do
  visit new_donation_path
end

Given("I click on the {string} stripe button") do |button|
  click_button button
  sleep 2
  @stripe_iframe = all(iframe[name=stripe_checkout_app]).last
end

Given("I fill in the stripe field {string} with {string}") do |field_name, value|
  within_iframe @stripe_iframe do
    fill_in field_name, with: value
  end
end

Given("I submit the stripe form") do
  within_iframe @stripe_iframe do
    find('.Section-button').click
  end
end

Then("I should be on the feeds page") do
  pending # Write code here that turns the phrase above into concrete actions
end