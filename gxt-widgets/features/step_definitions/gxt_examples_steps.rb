Given /^I am on the Gxt Examples page$/ do
  @page = GxtSamplePageObject.new(@browser)
  @page.navigate_to "http://gxtexamplegallery.appspot.com/"
end

When /^I have Local Pagination open$/ do
  @page.local_pagination_element.click
end

When /^I click next page$/ do
  @page.gxt_pager_element.next
end

Then /^I should be on page "(\d+)"$/ do |page_expected|
  @page.gxt_pager_element.page.should == page_expected
end

When /^"([^"]*)" should be listed in the grid$/ do |name_expected|
  @page.gxt_table_element[1][0].text.should == name_expected
end

When /^I click last page$/ do
  @page.gxt_pager_element.last
end

When /^I click on previous page$/ do
  @page.gxt_pager_element.previous
end

When /^I click on first page$/ do
  @page.gxt_pager_element.first
end

When /^type "(\d+)" into the page box$/ do |page|
  @page.gxt_pager_element.page=page
end