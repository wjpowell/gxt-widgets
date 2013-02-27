module GxtWidgets
  class GxtHeaderCell < PageObject::Elements::TableCell

      def initialize(element, platform, *menu_controls)
        super(element, platform)
        menu_controls.each do |menu_control|
          self.class.send include, menu_control
        end
      end

      def open_menu
        link_element.fire_event("onclick")
      end
  end
end