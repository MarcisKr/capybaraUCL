require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara-screenshot/cucumber'
require 'webdrivers'
require 'capybara/rspec'
require 'site_prism'
require 'rspec/retry'

Capybara.app_host = "https://test.unicredit.ee/en/e-application"

RSpec.configure do |config|
    # show retry status in spec process
    config.verbose_retry = true
    # show exception that triggers a retry if verbose_retry is set to true
    config.display_try_failure_messages = true
  
    # run retry only on features
    config.around :each, :js do |ex|
      ex.run_with_retry retry: 3
    end
  
    # callback to be run between retries  
    config.retry_callback = proc do |ex|
      # run some additional clean up task - can be filtered by example metadata
      if ex.metadata[:js]
        Capybara.reset!     
      end
    end
  end

if ENV['chrome']
    Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
    end
elsif ENV['firefox']
    capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(accept_insecure_certs: true)
    Capybara.default_driver = :firefox
    Capybara.register_driver :firefox do |app|
        Capybara::Selenium::Driver.new(app, browser: :firefox, :desired_capabilities => capabilities)
    end
elsif ENV['safari']
    Capybara.default_driver = :safari
    Capybara.register_driver :safari do |app|
        client = Selenium::WebDriver::Remote::Http::Default.new
        client.read_timeout = 120
        Capybara::Selenium::Driver.new(app, browser: :safari, http_client: client)
    end
end

Before do |scenario|
    @pages = Pages.new
    @tests = Tests.new(@pages)
    Capybara.current_session.current_window.resize_to(1920,1080)
    Capybara.ignore_hidden_elements = false
    Capybara.default_max_wait_time = 30
end

def add_cookie(name, value, domain)
    Capybara.current_session.driver.browser.manage.add_cookie(name: name, value: value, domain: domain)
end