require 'watir-webdriver'
require 'page-object/platforms/watir_webdriver/table'
module GxtWidgets
  class GxtGridGroup < GxtWidgets::RowContainer

    attr_reader :container

    def initialize(element, container,  platform)
      @element = element
      @container = container
      include_platform_for platform
    end

    @protected

    def initialize_row(row_element, platform)
      Object::GxtWidgets::GxtGridRow.new(row_element, container, platform)
    end

  end
end
