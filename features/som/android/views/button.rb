class Button

  def initialize(driver, uiquery)
    @driver = driver
    @uiquery = uiquery
  end

  def await
  	@driver.wait_for_element_exists(@uiquery)
  end

  def touch
  	@driver.touch(@uiquery)
  end
end