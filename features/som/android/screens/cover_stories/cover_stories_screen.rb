class CoverStoriesScreen

  def initialize(driver)
    @driver = driver
  end

  def await
    @driver.wait_for_element_exists("* marked:'Cover Stories'")
  end
end