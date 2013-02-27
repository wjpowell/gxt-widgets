module GxtWidgets
  module SortableColumn
    def sort_ascending
      link_element(:text=>"Sort Ascending").click
    end

    def sort_descending
      link_element(:text=>"Sort Descending").click
    end
  end
end

