require 'watir-webdriver'
require 'page-object/platforms/watir_webdriver/table'
module GxtWidgets
  class GxtGrid < PageObject::Elements::Table

    PageObject.register_widget :gxt_grid, GxtGrid, 'div'

    protected
    def child_xpath
      ".//descendant::tr"
    end

    def initialize_row(row_element, platform)
      Object::GxtWidgets::GxtGridRow.new(row_element, self, platform)
    end

    def initialize_header(header_element, platform)
      Object::GxtWidgets::GxtGridHeaderRow.new(header_element, self, platform)
    end

    def include_platform_for platform
      super
      if platform[:platform] == :watir_webdriver
        require 'gxt-widgets/platforms/watir_webdriver/gxt_grid'
        self.class.send :include, GxtWidgets::Platforms::WatirWebDriver::GxtGrid
      elsif platform[:platform] == :selenium_webdriver
        require 'gxt-widgets/platforms/selenium_webdriver/gxt_grid'
        self.class.send :include, GxtWidgets::Platforms::SeleniumWebDriver::GxtGrid
      else
        raise ArgumentError, "expect platform to be :watir_webdriver or :selenium_webdriver"
      end
    end
  end
end
