require "gxt-widgets/gxt_grid_row"
module GxtWidgets
  module Platforms
    module SeleniumWebDriver
      module GxtGrid
        include PageObject::Platforms::SeleniumWebDriver::Table

        def [](idx)
          eles = table_rows
          idx = find_index_by_title(idx, eles) if idx.kind_of?(String)
          return nil unless idx
          Object::GxtWidgets::GxtGridRow.new(eles[idx], self, :platform => :selenium_webdriver)
        end

      end
    end
  end
end


