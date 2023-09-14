Feature: Config Demo

Background:
 * url baseUrl
 * header Accept = 'application/json'

Scenario: Get Demo two
Given path '/users/2'
When method GET
Then status 200
And print response

Scenario: Config demo 1
Given print name