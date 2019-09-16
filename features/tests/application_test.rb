class ApplicationTest
    def initialize(pages)
        @pages = pages
    end

    def in_application
        @pages.page_application.visible?
    end
end