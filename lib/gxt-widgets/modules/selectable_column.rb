module GxtWidgets
  module SelectableColumn
      def include_column(column_name)
        column = link_element(:text=>column_name)
        column.click unless column.attribute("class").include? "x-menu-checked"
      end

      def exclude_column(column_name)
        column = link_element(:text=>column_name)
        column.click if column.attribute("class").include? "x-menu-checked"
      end
  end
end
