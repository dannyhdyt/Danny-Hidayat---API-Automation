Feature: Login

  Background: Setup
    Given url baseURL
    And print "--User Login--"

  Scenario: Logs User Into The System
    When path "user/login"
    And param username = "blackout123"
    And param password = "pass123"
    And header Accept = 'application/json'
    And method get
    Then status 200
    And print response