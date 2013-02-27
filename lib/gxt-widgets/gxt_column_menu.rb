module GxtWidgets
  class GxtColumnMenu < PageObject::Elements::Div
    include ::GxtWidgets::SortableColumn

    PageObject.register_widget(:gxt_column_menu, GxtColumnMenu, 'div')

    def open_column_selection_menu
      link_element(:text=>"Columns").hover
    end
  end
end
