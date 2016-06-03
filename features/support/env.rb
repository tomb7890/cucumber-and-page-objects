# coding: utf-8
require 'page-object'
require 'watir-webdriver'
require 'page-object/page_factory'

World(PageObject::PageFactory)

case ENV['BROWSER']
when 'safari'
  browser = Watir::Browser.new :safari
when 'firefox'
  browser = Watir::Browser.new :firefox
when 'chrome'
  browser = Watir::Browser.new :chrome
else
  browser = Watir::Browser.new :firefox
end

Before do
  @browser = browser
end

at_exit do
  browser.close
end
