Feature: Actualizar mascota

  Background:
    * url baseUrl
    * def petId = 5001

  Scenario: Actualizar mascota
    Given path 'pet', petId
    When method PUT
    And request
      """
      {
        "id": 5001,
        "category":{
          "id":0,
          "name":"Cat"
        },
        "name":"Pelusa",
        "photoUrls":["string"],
        "tags":[{"id":0, "name":"mascota"}],
        "status":"available"
      }
      """
    Then status 200