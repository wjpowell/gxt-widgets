require 'gxt-widgets/platforms/watir_webdriver/row_container'
module GxtWidgets
  module Platforms
    module WatirWebDriver
      module GxtGroupingGrid
        include GxtWidgets::Platforms::WatirWebDriver::RowContainer

        private
        def get_groups
          element.divs(:xpath, "//div[contains(@class, 'x-grid-group ')]")
        end

      end
    end
  end
end
