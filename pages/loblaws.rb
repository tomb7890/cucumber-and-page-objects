class LoblawsPage
  include PageObject
  page_url 'http://shop.loblaws.ca'
  text_field(:search_bar, id: 'search_bar')

  def search_for(search_term)
    s = @browser.span(class: 'text-search')
    s.click
    @browser.text_field(id: 'search-bar').when_present.set search_term
    @browser.form(:class, 'container form-nav-search').submit
  end

  def count_30cent_badges
    badge_text = 'SAVE $0.30'
    @browser.elements(class: 'deal-type', text: badge_text).size
  end
end
