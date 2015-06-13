class WelcomeScreen

  def initialize(driver)
    @driver = driver
  end

  def await
    @driver.wait_for_element_exists("* marked:'Welcome to Flipboard'")
  end
end