require 'watir-webdriver'
require 'page-object/platforms/watir_webdriver/table'
require 'gxt-widgets/row_container'
module GxtWidgets
  class GxtBasicTree < PageObject::Elements::Div

    PageObject.register_widget :gxt_basic_tree, GxtBasicTree, 'div'

    def child_nodes
      self.gxt_basic_tree_elements(:xpath=>child_xpath)
    end

    def name
      node_contents.span_element(:class=>"x-tree3-node-text").text
    end

    def node(node_name)
      node_index = child_nodes.find_index do |node|
        node.name == node_name
      end
      child_nodes[node_index]
    end

    def joint
      node_contents.image_element(:xpath=>".//img[contains(@class,'x-tree3-node-joint')]")
    end

    def expand
      joint.click unless self.expanded?
    end

    def expanded?
       self.node_container.visible?
    end


    def collapse
      joint.click unless self.collapsed?
    end

    def collapsed?
      !self.node_container.visible?
    end



    def node_contents
      self.div_element(:xpath=>".//div[contains(@class,'x-tree3-el')]")
    end

    def node_container
      self.div_element(:xpath=>".//div[contains(@class,'x-tree3-node-ct')]")
    end

    @protected
    def child_xpath
      ".//child::div[contains(@class,'x-tree3-node')]"
    end
  end
end
