require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara-screenshot/cucumber'
require 'webdrivers'
require 'capybara/rspec'
require 'site_prism'

Capybara.default_driver = :selenium
Capybara.app_host = "https://test.unicredit.ee/en/e-application"
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Before do |scenario|
    @pages = Pages.new
    @tests = Tests.new(@pages)
    Capybara.current_session.driver.execute_script("window.resizeTo(1920,1080)")
    Capybara.ignore_hidden_elements = false
    Capybara.default_max_wait_time = 30
end

def add_cookie(name, value, domain, expiration_date)
    Capybara.current_session.driver.browser.manage.add_cookie(name: name, value: value, domain: domain)
end