module GxtWidgets
  module Platforms
    module WatirWebDriver
      module GxtGridRow
        include PageObject::Platforms::WatirWebDriver::TableRow

        private

        def find_index_by_title(title)
          first_row = @container.first_row.element
          first_row.cells.find_index {|column| column.text.include? title }
        end

      end
    end
  end
end
