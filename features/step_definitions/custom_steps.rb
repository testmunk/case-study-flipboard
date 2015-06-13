Given(/^I am on the Welcome screen$/) do
  @app.welcome_screen.await
end

Given(/^I press Sign In button$/) do
  @app.welcome_screen.touch_sign_in
end

When(/^I sign in as "(.*?)" with password "(.*?)"$/) do |arg1, arg2|
  @app.sign_in_screen.enter_email(email)
  @app.sign_in_screen.enter_password(password)

  @app.sign_in_screen.touch_sign_in
end

Then(/^I should see Cover Stories screen$/) do
  @app.cover_stories_screen.await
end
