Feature: This feature is going to add employees in HRM application

  Background:
    When user enters valid admin username and password
    And user clicks on login button
    Then admin user is successfully logged in
    When user clicks on PIM option
    And user clicks on add employee option
  @smoke
  Scenario: Add an employee

    When user enters firstName, middleName and lastName
    And user clicks on save button
    Then employee added successfully
   @override
    Scenario: Adding one employee from cucumber feature file
      When user enters "oman" ,"tagai" and "gihid"
      And user clicks on save button
      Then employee added successfully

     @dataprovider
     Scenario Outline: Adding multiple employees from cucumber feature file
       When user enters "<firstName>" , "<middleName>" and "<lastName>"
       And user clicks on save button
       Then employee added successfully
       Examples:
       |firstName|middleName|lastName|
       |romid1    |MS     |zarif      |
       |rokan1    |MS     |elisa      |
       |mama1     |tarindi|jamu       |


       @datatable
       Scenario: Adding multiple employees using data table
         When user adds multiple employees and verify they are added
         |firstName|middleName|lastName|
         |Khryswana|MS        |jaman   |
         |zamis    |MS        |Gaukahar|
         |tamir    |MS        |microsoft|

         @excel
         Scenario: Adding employees from excel file
           When user adds multiple employees from excel file using "employeeData" sheet and verify the employee is added
