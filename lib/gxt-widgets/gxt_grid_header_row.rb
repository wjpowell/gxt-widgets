require 'gxt-widgets/gxt_header_cell'
module GxtWidgets
  class GxtGridHeaderRow < GxtGridRow


    protected
    def include_platform_for platform
      super
      if platform[:platform] == :watir_webdriver
        require 'gxt-widgets/platforms/watir_webdriver/gxt_grid_header_row'
        self.class.send :include, GxtWidgets::Platforms::WatirWebDriver::GxtGridHeaderRow
      elsif platform[:platform] == :selenium_webdriver
        require 'gxt-widgets/platforms/selenium_webdriver/gxt_grid_header_row'
        self.class.send :include, GxtWidgets::Platforms::SeleniumWebDriver::GxtGridHeaderRow
      else
        raise ArgumentError, "expect platform to be :watir_webdriver or :selenium_webdriver"
      end
    end
  end
end
