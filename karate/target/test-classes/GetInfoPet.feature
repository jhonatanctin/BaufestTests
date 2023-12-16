Feature: Get info for a pet
  Background: 
    * def requestAddPet = read("classpath:request/requestAddPet.json")
    * def headerRequest = read("classpath:header/headersAddPet.json")
    * def ulrBasePet = "https://petstore.swagger.io/v2/pet"
    * configure ssl = true

  @functional
  Scenario: Get a pet by id
    Given url ulrBasePet
    And headers headerRequest
    And request requestAddPet
    When method POST
    Then response.status == 200
    * def idPet = response
    
    Given url ulrBasePet
    And path '/', idPet.id
    And headers headerRequest
    When method GET
    Then response.status == 200
And match response == '#object'
    * def jsonSchemaExpected =
      """
      {
      "id": '#number',
      "category": {
      "id": '#number',
      "name": '#string'
      },
      "name": '#string',
      "photoUrls": [
      '#string'
      ],
      "tags": [
      {
        "id": '#number',
        "name": '#string'
      }
      ],
      "status": '#string'
      }
      """
    * match response == jsonSchemaExpected    
