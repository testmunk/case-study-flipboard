require 'som/android/screens/welcome/welcome_screen'


class FlipboardApp

  def initialize(driver)
    @driver = driver
  end

  def welcome_screen
    @welcome_screen ||= WelcomeScreen.new(@driver)
    @current_screen = @welcome_screen
  end

end