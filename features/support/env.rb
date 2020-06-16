require 'appium_lib'
require 'selenium-webdriver'
require 'rspec'
require 'cucumber'
require 'faker'
require_relative 'helpers'
require_relative 'pages_objects/page_objects'

World(PageObjects)
World(Helpers)

def caps
  caps = Appium.load_appium_txt file: File.expand_path('../appium.txt', __FILE__), verbose: true
  caps
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object