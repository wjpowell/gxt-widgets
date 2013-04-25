module GxtWidgets
  module GroupableColumn
    def group_by_this_field
      link_element(:text=>"Group By This Field").click
    end

    def show_in_groups
      link_element(:text=>"Show In Groups").click
    end
  end
end

