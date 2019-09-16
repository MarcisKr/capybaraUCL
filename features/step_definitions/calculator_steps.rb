Then("I am in leasing calculator") do
    @tests.calculator_tests.in_calculator
end

Given("I am in calculator page") do
    @tests.login_tests.load_login_page
    @tests.login_tests.fill_person_code("00000000000")
    @tests.login_tests.select_next_button_pos
    @tests.login_tests.logged_in
    @tests.account_tests.open_calculator
    @tests.calculator_tests.in_calculator
end

When("I fill calculator for {string} leasing for {string} car") do |type, year|
    @tests.calculator_tests.select_leasing(type)
    @tests.calculator_tests.select_car_brand("Audi")
    @tests.calculator_tests.select_car_model("A3")
    @tests.calculator_tests.enter_car_price("9100")
    @tests.calculator_tests.select_car_year(year)
    @tests.calculator_tests.select_dp_percentage("25")
    @tests.calculator_tests.select_lp("6")
    @tests.calculator_tests.select_dealer_city("Riga")
    @tests.calculator_tests.select_dealer_company("UCL ICT Department")
    @tests.calculator_tests.select_dealer_rep("Marcis Vitols")
end

When("I approve conditions") do
    @tests.calculator_tests.select_approve_conditions
end