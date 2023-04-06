require_relative '../base/base_class'

class MainPage < Base

  def initialize(driver, user_password, user_name)
    @user_password = user_password
    @user_name = user_name
    @driver = super(driver)
    locators_url
  end



  # Locators
  def locators_url
  @log_in_header_menu = "//a[@class='loginBtn']"
  @name = '.fieldWrap>input'
  @password = '.passWrap>input'
  @log_in_pop_up = '.btnWrap >:nth-child(2)'
  @main_world = '.footerBlock.playNow h4'
  @url = 'https://sfront.nuxbet.com.'
  @error_message = '.errors .error'
  end

  # Getters
  def get_log_in_header_menu_button
    Selenium::WebDriver::Wait.new(timeout: 10).until { @driver.find_element(:xpath, @log_in_header_menu) }
  end

  def get_name_input_field
    Selenium::WebDriver::Wait.new(timeout: 10).until { @driver.find_element(:css, @name) }
  end

  def get_password_input_field
    Selenium::WebDriver::Wait.new(timeout: 10).until { @driver.find_element(:css, @password) }
  end

  def get_log_in_pop_up_button
    Selenium::WebDriver::Wait.new(timeout: 10).until { @driver.find_element(:css, @log_in_pop_up) }
  end

  def get_message_error
    Selenium::WebDriver::Wait.new(timeout: 10).until { @driver.find_element(:css, @error_message) }
  end


  # Actions
  def log_in_header
    get_log_in_header_menu_button.click
    puts 'Click LogIn header menu'
  end


  def input_name(name)
    get_name_input_field.send_keys(name)
    puts 'Input User name'
  end

  def input_password(password)
    get_password_input_field.send_keys(password)
    puts 'Input User password'
  end

  def log_in_button
    get_log_in_pop_up_button.click
    puts 'Click LogIn pop-up button'
  end

  def mistake_error
    get_message_error.text
  end


  # Methods
  def authorization
    @driver.get(@url)
    @driver.manage.window.maximize
    log_in_header
    input_name(@user_name)
    input_password(@user_password)
    log_in_button
    @driver.save_screenshot("screenshot.png")
  end
end
