require 'watir-webdriver'
require 'page-object/platforms/watir_webdriver/table'
class GxtTable < PageObject::Elements::Table

  PageObject.register_widget :gxt_table, GxtTable, 'div'

  protected
  def child_xpath
    ".//descendant::tr"
  end

  def include_platform_for platform
    super
    if platform[:platform] == :watir_webdriver
      require 'page-object/platforms/watir_webdriver/table'
      self.class.send :include, WatirPageObjectGxtTable
    elsif platform[:platform] == :selenium_webdriver
      require 'page-object/platforms/selenium_webdriver/table'
      self.class.send :include, PageObject::Platforms::SeleniumWebDriver::Table
    else
      raise ArgumentError, "expect platform to be :watir_webdriver or :selenium_webdriver"
    end
  end
end

module WatirPageObjectGxtTable
  include PageObject::Platforms::WatirWebDriver::Table

  def [](idx)
    idx = find_index_by_title(idx) if idx.kind_of?(String)
    return nil unless idx
    Object::PageObject::Elements::TableRow.new(element.trs(:xpath => child_xpath)[idx], :platform => :watir_webdriver)
  end

end
