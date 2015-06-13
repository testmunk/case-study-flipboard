Given(/^I am on the Welcome screen$/) do
  @app.welcome_screen.await
end

Given(/^I press Sign In button$/) do
  @app.welcome_screen.sign_in.touch
end

When(/^I sign in as "(.*?)" with password "(.*?)"$/) do |email, password|
  @app.sign_in_screen.enter_email(email)
  @app.sign_in_screen.enter_password(password)

  @app.sign_in_screen.sign_in.touch
end

Then(/^I should see Cover Stories screen$/) do
  @app.cover_stories_screen.await
end
