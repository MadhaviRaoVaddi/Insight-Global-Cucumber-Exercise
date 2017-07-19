
 Feature: As a user when I Open the web page 'www.exercise1.com' and navigate to the values page I should be able to
      see correct number of values and calculations listed on the table.

 Background:
        Given I Open Chrome browser and go to 'Http://Exercise1.com'
        When I navigate to valuespage

 Scenario: Navigate to www.exercise1.com/values page and confirm that the right number of values appear on the screen
       Then I should see the following:
        |ibl_Val_id|
        |txt_val_id|
        |ibl_ttl_bal|
        |txt_ttl_val|

Scenario Outline:The values displayed on the screen should be greater than 0
      Then Columns ibl_val_id and txt_val_id should have values > 0
      Examples:
          |ibl_Val_id| |txt_val_id|
          |ibl_val_1 | |txt_val_1 |
          |ibl_val_2 | |txt_val_2 |
          |ibl_val_3 | |txt_val_3 |
          |ibl_val_4 | |txt_val_4 |
          |ibl_val_5 | |txt_val_5 |
          |ibl_ttl_val | |txt_ttl_val|

Scenario: Total balance 'tst_ttl_val' should be correct based on the listed values on the screen
      And All the values in the rows 1-5 is populated
      Then The correct sum of all 5 values should be calculated for the txt_ttl_val field

Scenario: The listed values in txt_val_id column should be formatted as currency
      Then The values in column txt_val_id should be formated in the currency format

Scenario:The total balance should match the sum of values in column tst_val_id
      Then txt_ttl_val should be = (txt_val_1 + txt_val_2 + txt_val_3 +txt_val_4 +txt_val_5)


