Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")
    
    Scenario: Third Post API Demo
    Given path '/users'
    And request { "name": "behal","job": "nottester"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response