module GxtWidgets
  class GxtColumnSelectionMenu  < PageObject::Elements::Div
    include ::GxtWidgets::SelectableColumn

    PageObject.register_widget(:gxt_column_selection_menu, GxtColumnSelectionMenu, 'div')
  end
end
