require "gxt-widgets/gxt_grid_row"
require 'gxt-widgets/gxt_grid_header_row'
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


