module GxtWidgets
  class GxtGridRow < PageObject::Elements::TableRow

    attr_reader :container

    def initialize(element, container,  platform)
      @element = element
      @container = container
      include_platform_for platform
    end

    protected

    def include_platform_for platform
      super
      if platform[:platform] == :watir_webdriver
        require 'gxt-widgets/platforms/watir_webdriver/gxt_grid_row'
        self.class.send :include, GxtWidgets::Platforms::WatirWebDriver::GxtGridRow
      elsif platform[:platform] == :selenium_webdriver
        require 'gxt-widgets/platforms/selenium_webdriver/gxt_grid_row'
        self.class.send :include, GxtWidgets::Platforms::SeleniumWebDriver::GxtGridRow
      else
        raise ArgumentError, "expect platform to be :watir_webdriver or :selenium_webdriver"
      end
    end
  end
end
