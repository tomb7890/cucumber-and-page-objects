require_relative '../../pages/loblaws.rb'

Given(/^A visit to the website$/) do
  visit_page LoblawsPage
end

When(/^I search for butter$/) do
  on_page LoblawsPage do |page|
    search_term = 'butter'
    page.search_for search_term
  end
end

Then(/^I should find (\d+) matches$/) do |arg1|
  on_page LoblawsPage do |page|
    expect(page.count_30cent_badges).to eq arg1.to_i
  end
end
