Feature: Get User by User Name

  Background: Setup
    Given url baseURL
    And print "--Get User Data--"

  Scenario: Get User Name
    When path "/user/blackout123"
    And header Accept = 'application/json'
    And method get
    Then status 200
    And print response
    And match $ contains
    """
    {
    id: '#number',
    username: '#string',
    firstName: '#string',
    lastName: '#string',
    email: '#string',
    password: '#string',
    phone: '#string',
    userStatus: '#number'
    }
    """

  Scenario: Get Invalid Username
    When path "/user/user1"
    And header Accept = 'application/json'
    And method get
    Then status 404
    And print response
