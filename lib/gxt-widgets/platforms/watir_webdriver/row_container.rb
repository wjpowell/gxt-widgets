require "gxt-widgets/gxt_grid_row"
require 'gxt-widgets/gxt_grid_header_row'
module GxtWidgets
  module Platforms
    module WatirWebDriver
      module RowContainer
        include PageObject::Platforms::WatirWebDriver::Table

        def [](idx)
          idx = find_index_by_title(idx) if idx.kind_of?(String)
          return nil unless idx
          initialize_row(row_collection[idx], :platform => :watir_webdriver)
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


