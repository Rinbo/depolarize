Given("I visit the donation page") do
  visit new_donation_path
end

Given("I click on the {string} stripe button") do |button|  
  click_button button
  sleep 2  
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
end

Given("I fill in the stripe field {string} with {string}") do |field_name, value| 
  within_frame @stripe_iframe do    
    page.find_field(field_name).set value
  end
end

Given("I submit the stripe form") do
  within_frame @stripe_iframe do
    find('.Section-button').click
  end
end

Then("I should see stripe message {string}") do |message|
  sleep 4
  expect(page).to have_content message
end