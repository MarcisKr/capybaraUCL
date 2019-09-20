class CalculatorTest
    def initialize(pages)
        @pages = pages
    end

    def in_calculator
        @pages.page_calculator.visible?
    end

    def select_leasing(type)
        if type == "financial"
            @pages.page_calculator.select_financial_leasing
        elsif type == "operate"
            @pages.page_calculator.select_operate_leasing
        else
            fail("Wrong input for leasing type!")
        end
    end

    def select_car_brand(brand)
        @pages.page_calculator.select_car_brand(brand)
    end

    def select_car_model(model)
        @pages.page_calculator.select_car_model(model)
    end

    def enter_car_price(amount)
        @pages.page_calculator.enter_car_price(amount)
    end

    def select_car_year(year)
        @pages.page_calculator.select_car_year(year)
    end

    def select_dp_percentage(percentage)
        if percentage == "0"
            @pages.page_calculator.select_dp_0
        elsif percentage == "10"
            @pages.page_calculator.select_dp_10
        elsif percentage == "15"
            @pages.page_calculator.select_dp_15
        elsif percentage == "20"
            @pages.page_calculator.select_dp_20
        elsif percentage == "25"
            @pages.page_calculator.select_dp_25
        elsif percentage == "30"
            @pages.page_calculator.select_dp_30
        else
            fail("Wrong input for percentage button!")
        end
    end

    def select_lp(years)
        if years == "2"
            @pages.page_calculator.select_lp_2
        elsif years == "3"
            @pages.page_calculator.select_lp_3
        elsif years == "4"
            @pages.page_calculator.select_lp_4
        elsif years == "5"
            @pages.page_calculator.select_lp_5
        elsif years == "6"
            @pages.page_calculator.select_lp_6
        elsif years == "7"
            @pages.page_calculator.select_lp_7
        else
            fail("Wrong input for percentage button!")
        end
    end

    def select_dealer_city(city)
        @pages.page_calculator.select_dealer_city(city)
    end

    def select_dealer_company(company)
        @pages.page_calculator.select_dealer_company(company)
    end

    def select_dealer_rep(name)
        @pages.page_calculator.select_dealer_rep(name)
    end

    def select_approve_conditions(neg)
        @pages.page_calculator.select_approve_conditions(neg)
    end

    def check_residual
        @pages.page_calculator.check_residual
    end
    
    def enter_mileage_limit(miles)
        @pages.page_calculator.enter_mileage_limit(miles)
    end

    def enter_mileage_current(miles)
        @pages.page_calculator.enter_mileage_current(miles)
    end

    def error_is(text)
        @pages.page_calculator.error_is(text)
    end
end