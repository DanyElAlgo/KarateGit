Feature: Crear mascota en Petstore

  Background:
    * url baseUrl

  Scenario: Crear una nueva mascota
    Given path 'pet'
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
    When method POST
    Then status 200
    And match response.name == 'Pelusa'
    And match response.category.name == 'Cat'