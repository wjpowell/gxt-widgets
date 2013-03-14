require "gxt-widgets/gxt_grid_row"
require 'gxt-widgets/gxt_grid_header_row'
module GxtWidgets
  module Platforms
    module SeleniumWebDriver
      module GxtHeaderGrid
        include Gxtwidgets::Platforms::SeleniumWebDriver::RowContainer

        def header
          initialize_header(table_rows[0], :platform => :selenium_webdriver)
        end

      end
    end
  end
end


