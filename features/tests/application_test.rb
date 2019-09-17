class ApplicationTest
    def initialize(pages)
        @pages = pages
    end

    def interest_rate_is(rate)
        @pages.page_application.interest_rate_is(rate)
    end

    def in_application
        @pages.page_application.visible?
    end
end