require_relative '../pages/main_page'
require_relative '../pages/user_cabinet_page'

describe 'Check Authorization' do

    options = Selenium::WebDriver::Chrome::Options.new
    # options.add_argument('headless')
    options.add_argument('--disable-background-timer-throttling')
    options.add_argument('--disable-usb-keyboard-detect')
    options.add_argument('--log-level=3') # установка уровня логирования в 3 (только ошибки)
    driver = Selenium::WebDriver.for :chrome, options: options


    it 'Valid authorization info' do
      MainPage.new(driver, 'rf35+/-g', 'gamer@mail.com').authorization
      sleep 5
      User_cabinet.new(driver).open_user_cabinet
    end

    # it 'Not valid authorization info' do
    #   check_error = MainPage.new(driver, 'rf35+/-g', '+++++.')
    #   check_error.authorization
    #   puts 'True' if expect(check_error.mistake_error).to include('Incorrect login or password. Please check again.')
    # end
    #
    # it 'Valid authorization info' do
    #   check_error = MainPage.new(driver, '0000', '-----')
    #   check_error.authorization
    #   puts 'True' if expect(check_error.mistake_error).to include('Incorrect login or password. Please check again.')
    # end
end





