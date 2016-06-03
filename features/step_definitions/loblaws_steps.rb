require_relative '../../pages/loblaws.rb'

Given(/^A visit to the website$/) do
  visit_page LoblawsPage
end

When(/^I search for butter$/) do
  on_page LoblawsPage do |page|
    search_term = 'butter'
    page.search_bar = search_term
  end
end

Then(/^I should find (\d+) matches$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
