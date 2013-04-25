When /^I open the Grouping Grid Example$/ do
  @page.grouping_grid_element.click
  @page = GroupingGridExample.new(@browser)
end

When /^I retrieve a GxtGroupingGrid widget$/ do
  @element = @page.grouping_grid_element
end

Then /^The grid should contain (\d+) groups$/ do |group_count|
  @element.groups.size.should == group_count.to_i
end

When /^The group headings should contain$/ do |table|
  found = false
  @element.groups.each do |heading|
    first_column = table.rows.map {|row| row[0]}
    first_column.should include heading.name
  end
end

When /^The "([^"]*)" Group is expanded$/ do |group|
  @group = @element.group(group)
  @group.expand
  @group.should be_expanded
end

When /^I collapse the group$/ do
  @group.collapse
  @group.should be_collapsed
end

Then /^The rows should not be visible$/ do
  @group.should be_collapsed
  @group.each do |row|
    row.should_not be_visible
  end
end

When /^The "([^"]*)" Group is collapsed$/ do |group|
  @group = @element.group(group)
  @group.collapse
  @group.should be_collapsed
end

When /^I expand the group$/ do
  @group.expand
  @group.should be_expanded
end

Then /^the rows should be visible$/ do
  @group.should be_expanded
  @group.each do |row|
    row.should be_visible
  end
end

Then /^the group headings should contain in order$/ do |table|
  (1..table.rows.size).each do |index|
    table.rows[index][0].should include @element.group(index).heading.name
  end
end

When /^I select Group By This Field$/ do
  @page.column_menu_element.group_by_this_field
end