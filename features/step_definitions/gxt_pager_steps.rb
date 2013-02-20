When /^I have Local Pagination open$/ do
  @page..click
  @page = LocalPaginationExample.new(@browser)
end

When /^I click next page$/ do
  @page.pager_element.next
end

Then /^I should be on page "(\d+)"$/ do |page_expected|
  @page.pager_element.page.should == page_expected
end

When /^"([^"]*)" should be listed in the grid$/ do |name_expected|
  @page.grid_element[1][0].text.should == name_expected
end

When /^I click last page$/ do
  @page.pager_element.last
end

When /^I click on previous page$/ do
  @page.pager_element.previous
end

When /^I click on first page$/ do
  @page.pager_element.first
end

When /^type "(\d+)" into the page box$/ do |page|
  @page.pager_element.page=page
end