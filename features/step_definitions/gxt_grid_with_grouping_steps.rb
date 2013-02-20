When /^I open the Grouping Grid Example$/ do
  @page.grouping_grid_element.click
  @page = GroupingGridExample.new(@browser)
end

When /^I retrieve a GxtGroupingGrid widget$/ do
  @element = @page.grouping_grid_element
end