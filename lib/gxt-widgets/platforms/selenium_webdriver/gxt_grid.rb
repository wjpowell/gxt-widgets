require "gxt-widgets/gxt_grid_row"
require 'gxt-widgets/gxt_grid_header_row'
module GxtWidgets
  module Platforms
    module SeleniumWebDriver
      module GxtGrid
        include PageObject::Platforms::SeleniumWebDriver::Table

        def [](idx)
          eles = table_rows
          idx = find_index_by_title(idx, eles) if idx.kind_of?(String)
          return nil unless idx
          initialize_row(eles[idx], :platform => :selenium_webdriver)
        end

        def header
          initialize_header(table_rows[0], :platform => :selenium_webdriver)
        end

      end
    end
  end
end


