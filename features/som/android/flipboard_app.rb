require 'som/android/screens/welcome/welcome_screen'
require 'som/android/screens/sign_in/sign_in_screen'


class FlipboardApp

  def initialize(driver)
    @driver = driver
  end

  def welcome_screen
    @welcome_screen ||= WelcomeScreen.new(@driver)
    @current_screen = @welcome_screen
  end

  def sign_in_screen
    @sign_in_screen ||= SignInScreen.new(@driver)
    @current_screen = @sign_in_screen
  end
end