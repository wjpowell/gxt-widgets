class GxtSamplePageObject
  include PageObject

  div(:basic_grid, :class => "label_basic_grid")
  div(:local_pagination, :class => "label_paging_grid")
  gxt_table(:grid, :class => "x-grid3")
  gxt_pager(:pager, :class =>"x-toolbar-ct")
end