require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara-screenshot/cucumber'
require 'webdrivers'
require 'capybara/rspec'
require 'site_prism'

Capybara.app_host = "https://test.unicredit.ee/en/e-application"

if ENV['chrome']
    Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
elsif ENV['firefox']
    capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(accept_insecure_certs: true)
    Capybara.default_driver = :firefox
    Capybara.register_driver :firefox do |app|
        Capybara::Selenium::Driver.new(app, browser: :firefox, :desired_capabilities => capabilities)
    end
end

Before do |scenario|
    @pages = Pages.new
    @tests = Tests.new(@pages)
    Capybara.current_session.driver.execute_script("window.resizeTo(1920,1080)")
    Capybara.ignore_hidden_elements = false
    Capybara.default_max_wait_time = 30
end

After do |scenario|
end

def add_cookie(name, value, domain, expiration_date)
    Capybara.current_session.driver.browser.manage.add_cookie(name: name, value: value, domain: domain)
end