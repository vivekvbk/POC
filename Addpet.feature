Feature: Adding pet

  Background:
    Given url "https://petstore.swagger.io"
    #* def excelfile = read('file:src/payloads/order.csv')
    * def addpetjson = read('file:src/payloads/Addpet.json')
    * def javaMethod = Java.type('feature4.javaMethod')
    * def updatejson = read('this:updatepet.json')


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
    * string response = response

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


    @deletingpet
    Scenario:
      * print "deletingpet"

