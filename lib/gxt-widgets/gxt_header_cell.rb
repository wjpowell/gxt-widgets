module GxtWidgets
  class GxtHeaderCell < PageObject::Elements::TableCell

      def sort_ascending
        menu.link_element(:text=>"Sort Ascending").click
      end

      def sort_descending
        menu.link_element(:text=>"Sort Descending").click
      end

      def include_column(column_name)
        column = column_menu.link_element(:text=>column_name)
        column.click unless column.attribute("class").include? "x-menu-checked"
      end

      def exclude_column(column_name)
        column = column_menu.link_element(:text=>column_name)
        column.click if column.attribute("class").include? "x-menu-checked"
      end

      @private
      def menu
        link_element.fire_event("onclick")
        div_element(:xpath=>"/div[@class contains('x-menu-list')]")
      end

      def column_menu
        menu.link_element(:text=>"Columns").hover
        gxt_menu_element(:xpath=>"(/div[@class contains('x-menu-list')])[1]")
      end

  end
end