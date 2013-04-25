require "page-object/platforms/selenium_webdriver/table_row"
require 'gxt-widgets/platforms/selenium_webdriver/row_container'
module GxtWidgets
  module Platforms
    module SeleniumWebDriver
      module GxtGroupingGrid
        include GxtWidgets::Platforms::SeleniumWebDriver::RowContainer

        private

        def get_groups
          element.find_elements(:xpath, "//div[contains(@class, 'x-grid-group ')]")
        end

      end
    end
  end
end
