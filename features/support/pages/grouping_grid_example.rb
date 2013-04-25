class GroupingGridExample
  include PageObject

  gxt_grouping_grid(:grouping_grid, :class => "x-grid3")
  gxt_group_column_menu(:column_menu, :xpath=>"//div[contains(@class,' x-menu-list')]")
  gxt_column_selection_menu(:column_selection_menu, :xpath=>"(//div[contains(@class,'x-menu-list') and not(contains(@class, 'x-menu-list-item'))])[2]")

end
