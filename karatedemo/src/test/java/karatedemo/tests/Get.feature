Feature: Get API Demo

Background:
 * url 'https://reqres.in/api'
 * header Accept = 'application/json'

Scenario: Get Demo two
Given path '/users/2'
When method GET
Then status 200
And print response
And print responseStatus
And print responseTime
And print responseHeaders
And print responseCookies
