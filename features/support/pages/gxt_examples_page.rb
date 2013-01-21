class GxtExamplesPage
  include PageObject

  page_url "http://gxtexamplegallery.appspot.com/"

  div(:basic_grid, :class => "label_basic_grid")
  div(:local_pagination, :class => "label_paging_grid")
end