class AccountTest
    def initialize(pages)
        @pages = pages
    end

    def select_my_account
        @pages.page_account.select_my_account
    end

    def select_latest_app_delete
        @pages.page_account.select_latest_app_delete
    end

    def open_calculator
        @pages.page_account.open_calculator
    end
end