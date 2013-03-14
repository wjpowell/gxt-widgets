require 'watir-webdriver'
require 'page-object/platforms/watir_webdriver/table'
module GxtWidgets
  class GxtGroupingGrid < GxtWidgets::GxtGrid

    PageObject.register_widget :gxt_grouping_grid, GxtGroupingGrid, 'div'
    def groups
      gxt_grid_group_elements(:xpath=>"//div[contains(@class, 'x-grid-group')]")
    end

    def group(group_index)
      div_element() do
        groups.find_index do |group_index|
          if div_element(:xpath=>"//div[contains(@class, 'x-grid-group-div')]").text.include? group_index

          end
        end
      end
    end
  end
end
