Feature: Update User

  Background: Setup
    Given url baseURL
    And print "--Update User Data--"

  Scenario: Change firstname and phone
    * def body = {"id":100,"username":"blackout123","firstName":"soundwave","lastName":"decepticon","email":"blackout@gmail.com","password":"password123","phone":"080989988","userStatus":1}
    * def header = {Accept:'application/json'}

    When path "/user/blackout123"
    And request body
    And headers header
    And method put
    Then status 200
    And print response
    And match response == {code:200, type:'unknown', message:'100'}

