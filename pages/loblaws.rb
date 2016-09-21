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

  def initialize_page
    @store_name = 'High Tech Road, Richmond Hill'
  end

  def add_item_to_cart
    search_for 'asparagus'
    btn = @browser.button(class: 'btn btn-secondary btn-add-to-cart')
    btn.click
  end

  def pick_a_store
    path = "//a[@data-store-title='#{@store_name}']//span[.='Shop']"
    @browser.element(xpath: path).when_present.click

    path = '//button//span[@id="pickup-time-label"]'
    @browser.element(xpath: path).when_present.click

    path = '//div[@class="slot available"]'
    el = @browser.element(xpath: path)
    el.when_present.click

    el = @browser.button(class: 'btn btn-primary btn-confirm')
    el.when_present.click
  end

  def displays_correct_store
    @browser.text.downcase.include?(@store_name.downcase)
  end
end
