
require "watir-webdriver"
require "rspec/expectations"
require "rubygems"

####Background ########

Given(/^I Open Chrome browser$/) do
  @browser ||= Watir::Browser.new :Chrome
  @browser.goto "http://Exercise1.com"

end


When(/^I navigate to valuespage$/) do
  |Values|
    @browser.Values.click
  end


#####Scenario 1 ########

Then(/^I should see the following:$/)  do |table|
  @browser.div(:id => 'tbl_Val_id').wait_until_present
  @browser.div(:id => 'txt_val_id').should txt_val_id exixt

      end

#######Scenario 2 ###########

Then(/^Columns ibl_val_id and txt_val_id should not have values >0$/)  do
  if
    @tbl_val_id >0
    Puts "Test Passes"
  else
    Puts "Test Failed"

  end
end

########Scenario 3 ###########
And(/^All the values in the rows 1\-5 is populated$/) do |arg|
  if
    tbl_val_id !=Null
    puts "Test Passed"
    puts "Test Failed"
  end
end

Then(/^the correct total amount should be shown$/) do

  Def TotalBalance

  if
   TotalBalance= sum(@txt_val_id)
    puts "Test Passed"
    Else
    Puts "Test Failed"

  end

end


##########Scenario 4 ########
Then(/^The values in column txt_val_id should be formated in the currency format$/) do
if
  @txt_val_id = Money:: Currency.new (txt_val_id ).exponent
  puts
  "Test Passed"
else
  puts "Test Failed"
end

end


######## Scenario 5 ########
Then(/^txt_ttl_val should be = \(txt_val_1 \+ txt_val_2 \+ txt_val_3 \+txt_val_4 \+txt_val_5\)$/) do
|txt_val_1, txt_val_2, txt_val_3, txt_val_4 , txt_val_5|

  Def TotalBalance

  if
    TotalBalnce = Aggregate(txt_val_1,txt_val_2,txt_val_3,txt_val_4,txt_val_5)
    puts "Test Passed"
  else
    puts "Test Failed"

  end
end

