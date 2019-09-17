class ApplicationPage
    def initialize
        @label_terms = Element.new(:xpath, "//*[@id='e_application_root']/descendant::h3[text() = 'Your leasing terms']")
        @label_interest_rate = Element.new(:xpath, "//*[@id='e_application_root']/descendant::dt[text() = 'Annual interest']/following-sibling::dd[1]")
    end

    def interest_rate_is(rate)
        @label_interest_rate.text_is(rate)
    end

    def visible?
        @label_terms.visible?
    end
end