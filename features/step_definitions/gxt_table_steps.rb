When /^I have the Basic Grid opened$/ do
  @page.basic_grid_element.click
end

When /^I have defined a GxtTable class extending Table$/ do
  class GxtTable < PageObject::Elements::Table

    protected
    def child_xpath
      ".//descendant::tr"
    end
  end
end

When /^I have registered the GxtTable with PageObject$/ do
  PageObject.register_widget :gxt_table, GxtTable, 'div'
end

When /^I retrieve a GxtTable widget$/ do
  @element = @page.gxt_table_element
end


When /^the GxtTable should have "(\d+)" rows$/ do |rows|
  @element.rows.should == rows.to_i
end

When /^I define a page-object using that widget$/ do
end
