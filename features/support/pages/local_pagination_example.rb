class LocalPaginationExample
  include PageObject

  gxt_grid(:grid, :class => "x-grid3")
  gxt_pager(:pager, :class =>"x-toolbar-ct")
end