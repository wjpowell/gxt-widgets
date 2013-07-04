class BasicTreeExample
  include PageObject

  TREE_CONTAINER_CLASS = 'x-tree3-node-ct'
  button(:expand, :text=>'Expand All')
  button(:collapse, :text=>'Collapse All')

  gxt_basic_tree(:basic_tree, :xpath=>"//div[contains(@class,'#{TREE_CONTAINER_CLASS}')]")
end