class WelcomeScreen

  def initialize(driver)
    @driver = driver
  end

  def await
    @driver.wait_for_element_exists("* marked:'Welcome to Flipboard'")
  end

  def touch_sign_in
  	@driver.touch("* id:'first_launch_cover_swipe_or_sign_in'")
  end
end