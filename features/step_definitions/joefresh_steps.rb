require_relative '../../pages/joefresh.rb'

When(/^I first go to the Joefresh site$/) do
  visit_page JoefreshPage
end

Then(/^I should see the welcome message$/) do
  on_page JoefreshPage do |page|
    msg = 'GET 10% OFF ONLINE'
    expect(page.text).to include msg
  end
end
