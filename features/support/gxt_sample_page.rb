class GxtSamplePageObject
  include PageObject

  div(:basic_grid, :class => "label_basic_grid")
  div(:local_pagination, :class => "label_paging_grid")
  gxt_table(:gxt_table, :class => "x-grid3")
  gxt_pager(:gxt_pager, :class =>"x-toolbar-ct")
end