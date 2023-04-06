require_relative '../base/base_class'

class User_cabinet < Base

  def initialize(driver)
    @driver = super(driver)
    locators
  end

  # Page locators
  def locators
    @drop_down_list_menu = '.userWrap > .rotateBlockArrow path'
    @my_profile_button = '.formWrap.userNav.showMobMenu >:nth-child(5)'
  end

  # Getters
  def get_dropdown_menu
    Selenium::WebDriver::Wait.new(timeout: 10).until { @driver.find_element(:css, @drop_down_list_menu) }
  end

  def get_cabinet_button
    Selenium::WebDriver::Wait.new(timeout: 10).until { @driver.find_element(:css, @my_profile_button) }
  end

  # Actions
  def main_dropdown_menu
    get_dropdown_menu.click
    puts 'Clicked on dropdown menu'
  end

  def cabinet_button
    get_cabinet_button.click
    puts 'Clicked on cabinet button'
  end

  # Methods
  def open_user_cabinet
    main_dropdown_menu
    sleep 3
    cabinet_button
    sleep 3
  end
end