When /^I have the Basic Grid opened$/ do
  @page.basic_grid_element.click
  @page = BasicGridExample.new(@browser)
end

When /^I retrieve a GxtGrid widget$/ do
  @element = @page.grid_element
end


When /^the GxtGrid should have "(\d+)" rows$/ do |rows|
  @element.rows.should == rows.to_i
end

Then /^the data for row "([^\"]*)" should be "([^\"]*)" and "([^\"]*)"$/ do |row, col1, col2|
  row = (row.to_i) if row.to_i > 0
  table_row = @element[row]
  table_row[0].text.should == col1
  table_row[1].text.should == col2
end


When /^I retrieve the data from the table cell$/ do
  @cell_data = @page.cell_id
end

Then /^the cell data should be '([^"]*)'$/ do |expected|
  @cell_data.should == expected
end

When /^I retrieve a GxtGrid widget by "([^\"]*)"$/ do |how|
  @element = @page.send "table_#{how}_element"
end

When /^I retrieve a GxtGrid widget by "([^\"]*)" and "([^\"]*)"$/ do |param1, param2|
  @element = @page.send "table_#{param1}_#{param2}_element"
end

When /^I retrieve a GxtGrid widget while the script is executing$/ do
  @element = @page.table_element(:id => 'table_id')
end

Then /^the data for the first row should be "([^\"]*)" and "([^\"]*)"$/ do |col1, col2|
  @element.first_row[0].text.should == col1
  @element.first_row[1].text.should == col2
end

Then /^the data for the last row should be "([^\"]*)" and "([^\"]*)"$/ do |col1, col2|
  @element.last_row[0].text.should == col1
  @element.last_row[1].text.should == col2
end

Then /^I should see that the table exists$/ do
  @page.table_id?.should == true
end

Then /^the data for column "([^\"]*)" and row "([^\"]*)" should be "([^\"]*)"$/ do |column, row, value|
  @element[row.to_i][column].text.should == value
end

Then /^the data for row "([^\"]*)" and column "([^\"]*)" should be "([^\"]*)"$/ do |row, column, value|
  @element[row][column].text.should == value
end

Then /^the data for row "([^\"]*)" should be nil$/ do |row|
  @element[row].should be_nil
end

Then /^the data for row "([^\"]*)" and column "([^\"]*)" should be nil$/ do |row, column|
  @element[row][column].should be_nil
end

Then /^I should see the text includes "([^"]*)" when I retrieve it by "([^"]*)"$/ do |text, how|
  @page.send("table_#{how}").should include text
end

Then /^the table should have "([^\"]*)" rows$/ do |rows|
  @element.rows.should == rows.to_i
end

Then /^each row should contain "([^\"]*)"$/ do |text|
  @element.each do |row|
    row.text.should include text
  end
end

Then /^row "([^\"]*)" should have "([^\"]*)" columns$/ do |row, cols|
  @element[row.to_i - 1].columns.should == cols.to_i
end

Then /^each column should contain "([^\"]*)"$/ do |text|
  row = @element[0]
  row.each do |column|
    column.text.should include text
  end
end
When /^the data for the second row should be "([^"]*)" and "([^"]*)"$/ do |col1, col2|
  @element.first_row[0].text.should == col1
  @element.first_row[1].text.should == col2
end
When /^I sort ascending by "([^"]*)"$/ do |column|
  @element.header[column].sort_ascending
end
When /^I sort descending by "([^"]*)"$/ do |column|
  @element.header[column].sort_descending
end