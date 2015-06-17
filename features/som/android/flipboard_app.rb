require 'som/android/screens/welcome/welcome_screen'
require 'som/android/screens/sign_in/sign_in_screen'
require 'som/android/screens/cover_stories/cover_stories_screen'


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

  def cover_stories_screen
    @cover_stories_screen ||= CoverStoriesScreen.new(@driver)
    @current_screen = @cover_stories_screen
  end
end