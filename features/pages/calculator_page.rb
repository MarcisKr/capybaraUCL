class CalculatorPage
    def initialize
        @button_financial_leasing = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Financial leasing']")
        @button_operate_leasing = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Operate lease']")
    end

    def visible?
        @button_financial_leasing.visible?
        @button_operate_leasing.visible?
    end
end