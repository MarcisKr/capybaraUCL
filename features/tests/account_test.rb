class AccountTest
    def initialize(pages)
        @pages = pages
    end

    def open_calculator
        @pages.page_account.open_calculator
    end
end