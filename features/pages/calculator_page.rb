class CalculatorPage
    def initialize
        @button_financial_leasing = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Financial leasing']")
        @button_operate_leasing = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[text() = 'Operate lease']")
        @dropdown_brand = Element.new(:xpath, "//*[@id='e_application_root']/descendant::label[text() = 'Car brand']/following::select[@name = 'make']")
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
        @error_message = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'invalid-feedback']")
    end

    def select_financial_leasing
        @button_financial_leasing.click
    end

    def select_operate_leasing
        @button_operate_leasing.click
    end

    def select_car_brand(brand)
        @dropdown_brand.select(brand)
    end

    def select_car_model(model)
        @dropdown_model.select(model)
    end

    def enter_car_price(amount)
        @input_price.clear_text
        @input_price.send_keys(amount)
    end

    def select_car_year(year)
        @dropdown_year.select(year)
    end

    def select_dp_0
        @button_dp_0.click
    end

    def select_dp_10
        @button_dp_10.click
    end

    def select_dp_15
        @button_dp_15.click
    end

    def select_dp_20
        @button_dp_20.click
    end

    def select_dp_25
        @button_dp_25.click
    end

    def select_dp_30
        @button_dp_30.click
    end

    def select_lp_2
        @button_lp_2.click
    end

    def select_lp_3
        @button_lp_3.click
    end

    def select_lp_4
        @button_lp_4.click
    end

    def select_lp_5
        @button_lp_5.click
    end

    def select_lp_6
        @button_lp_6.click
    end

    def select_lp_7
        @button_lp_7.click
    end

    def select_dealer_city(city)
        @dropdown_dealer_city.select(city)
    end

    def select_dealer_company(company)
        @dropdown_dealer_company.select(company)
    end

    def select_dealer_rep(name)
        @dropdown_dealer_rep.select(name)
    end

    def select_approve_conditions
        if @button_approve_conditions.disabled?
            fail("'APPROVE CONDITIONS' button is disabled!")
        else
            @button_approve_conditions.click
        end
    end

    def select_approve_conditions_neg
            @button_approve_conditions.click
    end

    def check_residual
        @checkbox_residual.check
    end

    def enter_mileage_limit(miles)
        @input_mileage_limit.clear_text
        @input_mileage_limit.send_keys(miles)
    end

    def enter_mileage_current(miles)
        @input_mileage_current.clear_text
        @input_mileage_current.send_keys(miles)
    end

    def error_is(text)
        @error_message.text_is(text)
    end

    def visible?
        @button_financial_leasing.visible?
        @button_operate_leasing.visible?
        @button_get_offer.visible?
        @button_approve_conditions.visible?
    end
end