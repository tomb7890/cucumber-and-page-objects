class LoblawsPage
  include PageObject
  page_url 'http://shop.loblaws.ca'

  #  <span # class="deal-type">SAVE $0.30</span>
  text_field(:search_bar, id: 'search_bar')
end
