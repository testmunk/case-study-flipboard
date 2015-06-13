require 'som/android/screens/screen'
require 'som/android/views/button'


class SignInScreen < Screen
  
  attr_accessor :sign_in


  def initialize(driver)
    super driver

    @sign_in = Button.new(driver, "* id:'login_button'")
  end

  def await
    @sign_in.await
  end

  def enter_email(email)
    @driver.enter_text("* id:'login_username'", email)
  end

  def enter_password(password)
    @driver.enter_text("* id:'login_password'", password)
  end
end