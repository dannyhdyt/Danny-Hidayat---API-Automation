Feature: Create User Data

  Background: Setup
    Given url baseURL
    And print "--Create User--"

  Scenario: Create User
    * def body = {"id":100,"username":"blackout123","firstName":"blackout","lastName":"decepticon","email":"blackout@gmail.com","password":"password123","phone":"080989999","userStatus":1}
    * def header = {Accept:'application/json'}

    When path "/user"
    And request body
    And headers header
    And method post
    Then status 200
    And print response
    And match response == {code:200, type:'unknown', message:'100'}

