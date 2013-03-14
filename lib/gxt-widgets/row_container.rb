require 'watir-webdriver'
require 'page-object/platforms/watir_webdriver/table'
module GxtWidgets
  class RowContainer < PageObject::Elements::Table

    protected
    def child_xpath
      ".//descendant::tr"
    end

    def initialize_row(row_element, platform)
      Object::GxtWidgets::GxtGridRow.new(row_element, self, platform)
    end

    def include_platform_for platform
      super
      if platform[:platform] == :watir_webdriver
        require 'gxt-widgets/platforms/watir_webdriver/row_container'
        self.class.send :include, GxtWidgets::Platforms::WatirWebDriver::RowContainer
      elsif platform[:platform] == :selenium_webdriver
        require 'gxt-widgets/platforms/selenium_webdriver/row_container'
        self.class.send :include, GxtWidgets::Platforms::SeleniumWebDriver::RowContainer
      else
        raise ArgumentError, "expect platform to be :watir_webdriver or :selenium_webdriver"
      end
    end
  end
end
