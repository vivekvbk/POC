Feature: Crud Operations

  Background:
    Given url "https://petstore.swagger.io"
    #* def excelfile = read('file:src/payloads/order.csv')
    * def addpetjson = read('this:Addpet.json')
    * def text = Java.type('feature4.text')
    * def javaMethod = Java.type('feature4.javaMethod')
    * def updatejson = read('this:updatepet.json')


  @addingpetcrud
  Scenario: Reading order through excel file
    And path 'v2/pet'
    And request  addpetjson
    And method post
    * print response
    * print responseStatus
    * def orderId = $.id
    * print orderId

  @gettingpetcrud
  Scenario: Getting a pet
    And path '/v2/pet/1'
    And method get
    * print response
    And status 200

  @updatingpetcrud
  Scenario:Updating a pet
    And path 'v2/pet'
    And request updatejson
    And method put
    * print response
    * print response
    * print responseStatus
    * def orderId = $.id
    * print orderId