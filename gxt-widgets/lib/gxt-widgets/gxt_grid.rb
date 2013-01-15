class GxtTable < PageObject::Elements::Table

  PageObject.register_widget :gxt_table, GxtTable, 'div'

  protected
  def child_xpath
    ".//descendant::tr"
  end
end
