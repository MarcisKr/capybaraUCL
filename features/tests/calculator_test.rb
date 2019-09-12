class CalculatorTest
    def initialize(pages)
        @pages = pages
    end

    def in_calculator
        @pages.page_calculator.visible?
    end
end