require 'watir-webdriver'

module PageObject
  module PersistantBrowser
    @@browser = false
    def self.get_browser
      if !@@browser
        target_browser = ENV['BROWSER'].to_sym
        @@browser =  Watir::Browser.new target_browser
      end

      @@browser
    end
    def self.quit
      @@browser.quit
    end
  end
end
