require 'webdrivers'
require 'selenium-webdriver'
require 'rspec'

class Base
  def initialize(driver)
    @driver = driver
    # options = Selenium::WebDriver::Chrome::Options.new
    # # options.add_argument('headless')
    # options.add_argument('--disable-background-timer-throttling')
    # options.add_argument('--disable-usb-keyboard-detect')
    # options.add_argument('--log-level=3') # установка уровня логирования в 3 (только ошибки)
    # @driver = Selenium::WebDriver.for :chrome, options: options
  end
end
