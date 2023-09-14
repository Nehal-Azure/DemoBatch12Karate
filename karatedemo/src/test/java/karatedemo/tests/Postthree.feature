Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    
    
    Scenario: Fifth Post API Demo
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'/src/test/resources/request1.json'
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 201
    And print response
    
    Scenario: Sixth Post API Demo
    Given path '/users'
    And def requestBody = read("request2.json")
    And set requestBody.name = 'yusraupdated'
    And request requestBody
    When method POST
    Then status 201
    And print response