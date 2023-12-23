Feature: Delete User

  Background:
    Given url baseURL
    And print "--Delete User ID--"

  Scenario: Delete Valid Username
    When path "/user/shockwave2"
    And header Accept = 'application/json'
    And method delete
    Then status 200
    And print response


