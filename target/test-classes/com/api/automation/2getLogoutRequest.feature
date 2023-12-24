Feature: Logout

  Background: Setup
    Given url baseURL
    And print "--User log Out--"

  Scenario: Logs out current logged in user session
    When path "user/logout"
    And method get
    Then status 200
    And print response