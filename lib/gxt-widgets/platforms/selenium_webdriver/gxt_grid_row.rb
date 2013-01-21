require "page-object/platforms/selenium_webdriver/table_row"
module GxtWidgets
  module Platforms
    module SeleniumWebDriver
      module GxtGridRow
        include PageObject::Platforms::SeleniumWebDriver::TableRow

        def find_index_by_title(title)
          first_row = @container.first_row
          first_row.find_index {|column| column.text.include? title }
        end
      end
    end
  end
end
