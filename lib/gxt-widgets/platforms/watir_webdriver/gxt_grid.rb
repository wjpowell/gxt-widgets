require "gxt-widgets/gxt_grid_row"
require 'gxt-widgets/gxt_grid_header_row'
require 'gxt-widgets/platforms/watir_webdriver/row_container'
module GxtWidgets
  module Platforms
    module WatirWebDriver
      module GxtGrid
        include GxtWidgets::Platforms::WatirWebDriver::RowContainer

        def header
          initialize_header(row_collection[0], :platform => :watir_webdriver)
        end
      end
    end
  end
end


