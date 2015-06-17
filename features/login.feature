Feature: Login feature

  Scenario: As a valid user I can log into my app using my mail and password 
	Given I am on the Welcome screen
	When I press Sign In button
	And I sign in as "test@gmail.com" with password "password"
	Then I should see Cover Stories screen