When(/^I add an item to the cart$/) do
  on_page LoblawsPage do |page|
    expect(page.add_item_to_cart)
  end
end

When(/^I pick a store$/) do
  on_page LoblawsPage do |page|
    expect(page.pick_a_store)
  end
end

Then(/^The homepage should display the correct store$/) do
  on_page LoblawsPage do |page|
    expect(page.displays_correct_store)
  end
end

Then(/^The homepage should display the correct timeslot$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
