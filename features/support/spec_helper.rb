require 'capybara/rspec'
#require 'capybara/cucumber'
require 'site_prism'
require 'capybara'
require 'rspec'
require 'selenium-webdriver'
require 'cucumber'

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('-start-maximized')
  options.add_argument('--disable-infobars')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-browser-side-navigation')
  options.add_argument('--disable-gpu')
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.register_driver :firefox do |app|
  options = Selenium::WebDriver::Firefox::Options.new
  options.add_argument('-start-maximized')
  options.add_argument('--disable-infobars')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-browser-side-navigation')
  options.add_argument('--disable-gpu')
  Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
end

RSpec.configure do |config|
  config.include Capybara::DSL

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  Capybara.configure do |config|
    config.app_host = 'https://www.glassdoor.com.br/'
    config.default_max_wait_time = 15
    config.default_driver = :selenium_chrome
  end

  config.around do |example|
    puts '~> ' + example.metadata[:example_group][:full_description]
    [:chrome, :firefox].each do |browser|
      Capybara.current_driver = browser
      puts "~~> #{example.description} @ #{browser}"
      example.run
    end
  end
end
