require 'watir-webdriver'
require 'page-object/platforms/watir_webdriver/table'
module GxtWidgets
  class GxtGridGroup < GxtWidgets::RowContainer

    attr_reader :container

    def name
      group_title.text
    end

    def expanded?
      not collapsed?
    end

    def collapsed?
      attribute(:class).include? "x-grid-group-collapsed"
    end

    def expand
      group_title.click unless expanded?
    end

    def collapse
      group_title.click if expanded?
    end

    def initialize(element, container,  platform)
      @element = element
      @container = container
      include_platform_for platform
    end

    @protected
    def group_title
      div_element(:class=>'x-grid-group-hd')
    end

    def initialize_row(row_element, platform)
      Object::GxtWidgets::GxtGridRow.new(row_element, container, platform)
    end

  end
end
