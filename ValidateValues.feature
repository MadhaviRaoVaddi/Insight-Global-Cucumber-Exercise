
    Feature: As a user when I Open the web page 'www.exercise1.com' and navigate to the values tab I should be able to
      see correct number of values and calculations on the table.

     Background:
       Given I Open Chrome browser
              When I navigate to valuespage

      Scenario : 1 Navigate to exercise1 page and confirm that the right number of values appear on the screen
        Then I should see the following:
        |ibl_Val_id|
        |txt_val_id|
        |ibl_ttl_bal|
        |txt_ttl_val|

        Scenario Outline: 2 The values displayed on the screen should be greater than 0
          Then Columns ibl_val_id and txt_val_id should not have values >0
          Examples:
          |ibl_Val_id| |txt_val_id|
          |ibl_val_1 | |txt_val_1 |
          |ibl_val_2 | |txt_val_2 |
          |ibl_val_3 | |txt_val_3 |
          |ibl_val_4 | |txt_val_4 |
          |ibl_val_5 | |txt_val_5 |
          |ibl_ttl_val | |txt_ttl_val|

          Scenario:3 Total balance should be correct based on the listed values on the screen
           And All the values in the rows 1-5 is populated
          Then the correct total amount should be shown

            Scenario: 4 The listed values should be formatted as currency

              Then The values in column txt_val_id should be formated in the currency format


              Scenario:5 The total balance should match the sum of values
                Then txt_ttl_val should be = (txt_val_1 + txt_val_2 + txt_val_3 +txt_val_4 +txt_val_5)


