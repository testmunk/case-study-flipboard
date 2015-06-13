require 'som/android/screens/screen'
require 'som/android/views/button'


class WelcomeScreen < Screen

  attr_accessor :sign_in


  def initialize(driver)
    super driver

    @sign_in = Button.new(driver, "* id:'first_launch_cover_swipe_or_sign_in'")
  end

  def await
    @driver.wait_for_element_exists("* marked:'Welcome to Flipboard'")
  end
end