Feature: User List

  Background: Setup
    Given url baseURL
    And print "--Create User With List--"

  Scenario: Create User With List
    * def body =
    """
[
    {
        "id": 100,
        "username": "blackout123",
        "firstName": "blackout",
        "lastName": "decepticon",
        "email": "blackout@gmail.com",
        "password": "password123",
        "phone": "080989999",
        "userStatus": 1
    },
    {
        "id": 101,
        "username": "shockwave2",
        "firstName": "shockwave",
        "lastName": "decepticon",
        "email": "shockwave@gmail.com",
        "password": "password234",
        "phone": "0080989998",
        "userStatus": 1
    }
]
"""
    * def header = {Accept: 'application/json'}

    When path "/user/createWithList"
    And request body
    And headers header
    And method post
    Then status 200
    And print response
    And match response == {code:200, type:'unknown', message:'ok'}

