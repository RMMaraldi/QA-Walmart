require 'capybara/cucumber'
require 'selenium-webdriver'
require 'gherkin'
require 'httparty'
require 'rspec'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time
