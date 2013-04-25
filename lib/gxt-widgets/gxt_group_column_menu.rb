module GxtWidgets
  class GxtGroupColumnMenu < GxtWidgets::GxtColumnMenu
    include ::GxtWidgets::GroupableColumn

    PageObject.register_widget(:gxt_group_column_menu, GxtGroupColumnMenu, 'div')

  end
end
