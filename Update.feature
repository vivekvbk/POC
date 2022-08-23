Feature:Updating pet


  Background:
    Given url 'https://petstore.swagger.io'
    * def updatejson = read('this:updatepet.json')

  @updatingpet
    Scenario:

    And path 'v2/pet'
      And request updatejson
      And method put
      * print response
    * print response
    * print responseStatus
    * def orderId = $.id
    * print orderId



