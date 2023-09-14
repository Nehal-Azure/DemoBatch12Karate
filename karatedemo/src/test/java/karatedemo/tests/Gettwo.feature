Feature: Get API Demo

Background:
 * url 'https://reqres.in/api'
 * header Accept = 'application/json'

Scenario: Get Demo two
Given path '/users'
And param page = 2
When method GET
Then status 200
And print response
And print responseStatus
And print responseTime
And print responseHeaders
And print responseCookies

# Get with Assertions
Scenario: Get Demo three
Given path '/users'
And param page = 2
When method GET
Then status 200
And print response
And match response.data[1].last_name == 'Ferguson'
And assert response.data.length == 6
And match $.data[1].id == 8

