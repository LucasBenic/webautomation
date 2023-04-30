require 'capybara/rspec'
require 'capybara/cucumber'
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

RSpec.configure do |config|
  config.include Capybara::DSL

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  #save screenshot if test fails
  After do |scenario|
    if scenario.failed?
      nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '').tr(' ','_')
      date = Date.today.to_s
      page.save_screenshot('screenshot/' + date + '-'+ nome + '.png')
    end
  end

  Capybara.configure do |config|
    config.app_host = 'https://www.glassdoor.com.br/'
    config.default_max_wait_time = 20
    config.default_driver = :selenium_chrome
    Capybara.page.driver.browser.manage.window.maximize
  end
end



