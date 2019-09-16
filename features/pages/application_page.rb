class ApplicationPage
    def initialize
        @label_terms = Element.new(:xpath, "//*[@id='e_application_root']/descendant::h3[text() = 'Your leasing terms']")
    end

    def visible?
        @label_terms.visible?
    end
end