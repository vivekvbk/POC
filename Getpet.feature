Feature: Getting a pet


  Background:
    Given url "https://petstore.swagger.io"
    * def javaMethod = Java.type('feature4.javaMethod')
    * def addpetjson = read('this:Addpet.json')

  @addingpet
  Scenario: Add pet to data
    And path 'v2/pet'
    And request  addpetjson
    And method post
    * print response
    * print responseStatus
    * def orderId = $.id
    * print orderId
    * print 'addingpet1'
  @gettingpet
  Scenario: Getting a pet
    And path '/v2/pet/1'
    And method get
    * print response
    And status 200


