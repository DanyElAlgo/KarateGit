Feature: Borrar mascotaaaaaaaaaaaaa

  Background:
    * url baseUrl
    * def petId = 5001

  Scenario: Borrar
    Given path 'pet', petId
    When method DELETE
    Then status 200