@All
Feature: Login

  @Test1 @Positive @Login
  Scenario: Login with valid credentials
    Given User is on Login page
    When User fills "standard_user" and "secret_sauce"
    And User clicks login button
    Then User should see "Products"

  @Test2 @Negative @Login
  Scenario: Login with invalid credentials
    Given User is on Login page
    When User fills "invalid_user" and "invalid_password"
    And User clicks login button
    Then User should see "Epic sadface: Username and password do not match any user in this service"
