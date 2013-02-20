require "gxt-widgets/gxt_grid_row"
require 'gxt-widgets/gxt_grid_header_row'
module GxtWidgets
  module Platforms
    module WatirWebDriver
      module GxtGrid
        include PageObject::Platforms::WatirWebDriver::Table

        def [](idx)
          idx = find_index_by_title(idx) if idx.kind_of?(String)
          return nil unless idx
          Object::GxtWidgets::GxtGridRow.new(row_collection[idx], self, :platform => :watir_webdriver)
        end

        def header
          Object::GxtWidgets::GxtGridHeaderRow.new(row_collection[0], self, :platform => :watir_webdriver)
        end

        private

        def find_index_by_title(row_title)
          row_collection.find_index do |row|
            row.cells.any? { |col| col.text.include? row_title }
          end
        end

        def row_collection
          element.trs(:xpath => child_xpath)
        end
      end
    end
  end
end


