Feature: Obtener mascota creada en Petstore

  Background:
    * url baseUrl
    * def petId = 5001

  Scenario: Consultar mascota por ID
    Given path 'pet', petId
    When method GET
    Then status 200
    And match response.id == 5001
    And match response.name == 'Pelusa'
    And match response.status == 'available'