This is a collection of GXT widgets for page object.

The first widgets are gxt_grid and gxt_pager.

At this time, the Gxt_grid only works with selenium.

Work to do:  Fill out widgets from the Gxt Example Gallery http://gxtexamplegallery.appspot.com/

Fix the Gxt Grid.  The current extension overrides the child_xpath method. This works in Selenium as the method for returning children from the table makes use of this child_xpath.  In Watir the child rows on a table are returned from a [] method, which does not exist.

Add a Grid with Grouping widget.

Add a Basic Tree Widget.