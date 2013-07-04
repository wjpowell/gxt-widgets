When /^I have the Basic Tree opened$/ do
  @page.basic_tree_element.click
  @page = BasicTreeExample.new(@browser)
end
When /^I retrieve a GxtTree widget$/ do
  @element = @page.basic_tree_element
end
When /^I get the top level tree nodes$/ do
  @element = @page.basic_tree_element
end
Then /^the count should be (\d+)$/ do |expected_count|
  @element.child_nodes.count.should == expected_count.to_i
end
When /^I expand the "([^"]*)" tree node$/ do |node_name|
  @element.node(node_name).expand
end
Then /^The "([^"]*)" node should be visible$/ do |node_name|
  @element.node(node_name).should be_visible
end
Given /^the "([^"]*)" node is collapsed$/ do |node_name|
  @element = @page.basic_tree_element.node(node_name)
  @element.collapse
end
When /^I click on the node joint$/ do
  @element.joint.click
end
Then /^the node should be expanded$/ do
  @element.should be_expanded
  @element.child_nodes.each do |node|
    node.should be_visible
  end
end
Given /^the "([^"]*)" node is expanded$/ do |node_name|
  @element = @page.basic_tree_element.node(node_name)
  @element.expand
end
Then /^the node should be collapsed$/ do
  @element.should be_collapsed
  @element.child_nodes.each do |node|
    node.should_not be_visible
  end
end
When /^I double-click on the node$/ do
  @element.click
  @element.double_click
end