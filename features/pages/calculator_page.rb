class CalculatorPage
    def initialize
        @button_financial_leasing = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Financial leasing']")
        @button_operate_leasing = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Operate lease']")
        @dropdown_brand = Element.new(:xpath, "//*[@id='e_application_root']/descendant::select[@name = 'make']")
        @dropdown_model = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'form-group']/label[@for = 'model']/following::select[1]")
        @input_price = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'carPrice']")
        @dropdown_year = Element.new(:xpath, "//*[@id='e_application_root']/descendant::select[@name = 'manufactureYear']")
        @button_dp_0 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[@name = 'downPaymentPercentage' and text() = '0%']")
        @button_dp_10 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[@name = 'downPaymentPercentage' and text() = '10%']")
        @button_dp_15 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[@name = 'downPaymentPercentage' and text() = '15%']")
        @button_dp_20 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[@name = 'downPaymentPercentage' and text() = '20%']")
        @button_dp_25 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[@name = 'downPaymentPercentage' and text() = '25%']")
        @button_dp_30 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[@name = 'downPaymentPercentage' and text() = '30%']")
        @input_downpayment = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'downPayment']")
        @button_lp_2 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'RadioButtonGroup']/button[@name = 'periodInYears' and text() = '2']")
        @button_lp_3 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'RadioButtonGroup']/button[@name = 'periodInYears' and text() = '3']")
        @button_lp_4 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'RadioButtonGroup']/button[@name = 'periodInYears' and text() = '4']")
        @button_lp_5 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'RadioButtonGroup']/button[@name = 'periodInYears' and text() = '5']")
        @button_lp_6 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'RadioButtonGroup']/button[@name = 'periodInYears' and text() = '6']")
        @button_lp_7 = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'RadioButtonGroup']/button[@name = 'periodInYears' and text() = '7']")
        @checkbox_residual = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'withResidualValue' and @type = 'checkbox']")
        @input_residual_percent = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'residualValuePercentage']")
        @input_residual_amount = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'residualValue']")
        @input_mileage_limit = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'mileageLimit']")
        @input_mileage_current = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'currentMileage']")
        @dropdown_dealer_city = Element.new(:xpath, "//*[@id='e_application_root']/descendant::select[@id = 'city']")
        @dropdown_dealer_company = Element.new(:xpath, "//*[@id='e_application_root']/descendant::select[@name = 'company']")
        @dropdown_dealer_rep = Element.new(:xpath, "//*[@id='e_application_root']/descendant::label[@for = 'representative']/following::select")
        @checkbox_insurance = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'insuranceOffer']")
        @label_monthly_payment = Element.new(:xpath, "//*[@id='e_application_root']/descendant::h4[@class = 'red']")
        @button_payment_schedule = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Payment schedule']")
        @button_get_offer = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Get an offer']")
        @button_approve_conditions = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Approve conditions']")
    end

    def visible?
        @button_financial_leasing.visible?
        @button_operate_leasing.visible?
    end
end