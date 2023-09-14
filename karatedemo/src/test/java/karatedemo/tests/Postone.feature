Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: First Post API Demo
    Given url 'https://reqres.in/api/users'
    And request { "name": "nehal","job": "tester"}
    When method POST
    Then status 201
    And print response

  Scenario: Second Post API Demo
    Given path '/users'
    And request { "name": "behal","job": "nottester"}
    When method POST
    Then status 201
    And print response

  Scenario: Third Post API Demo
    Given path '/users'
    And request { "name": "behal","job": "nottester"}
    When method POST
    Then status 201
    And match response == {"createdAt": "#ignore","name": "behal","id": "#string","job": "nottester"}
    
