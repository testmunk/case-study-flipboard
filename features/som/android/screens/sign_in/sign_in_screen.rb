class SignInScreen

  def initialize(driver)
    @driver = driver
  end

  def await
    @driver.wait_for_element_exists("* id:'login_button'")
  end

  def touch_sign_in
    @driver.touch("* id:'login_button'")
  end

  def enter_email(email)
    @driver.enter_text("* id:'login_username'", email)
  end

  def enter_password(password)
    @driver.enter_text("* id:'login_password'", password)
  end
end