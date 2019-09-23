Then("I am in leasing calculator") do
    @tests.calculator_tests.in_calculator
end

Given("I am in calculator page with user - {string}") do |usr|
    @tests.login_tests.load_login_page
    @tests.login_tests.fill_person_code(usr)
    @tests.login_tests.select_next_button(false)
    @tests.login_tests.logged_in
    @tests.account_tests.open_calculator
    @tests.calculator_tests.in_calculator
end

When("I fill calculator for {string} leasing for {string} {string} {string} that costs {string}") do |type, year, car, model, price|
    @tests.calculator_tests.select_leasing(type)
    @tests.calculator_tests.select_car_brand(car)
    @tests.calculator_tests.select_car_model(model)
    @tests.calculator_tests.enter_car_price(price)
    @tests.calculator_tests.select_car_year(year)
    @tests.calculator_tests.select_dp_percentage("25")
    @tests.calculator_tests.select_lp("6")
    @tests.calculator_tests.check_residual
    @tests.calculator_tests.enter_mileage_limit("100")
    @tests.calculator_tests.enter_mileage_current("100")
    @tests.calculator_tests.select_dealer_city("Riga")
    @tests.calculator_tests.select_dealer_company("UCL ICT Department")
    @tests.calculator_tests.select_dealer_rep("Marcis Vitols")
end

When("I approve conditions") do
    @tests.calculator_tests.select_approve_conditions(false)
end

When("I approve conditions neg") do
    @tests.calculator_tests.select_approve_conditions(true)
end

Then("I see {string} calculator error") do |er|
    @tests.calculator_tests.error_is(er)
end

When("I select {string} leasing") do |type|
    @tests.calculator_tests.select_leasing(type)
end

When("I enter car price - {string}") do |price|
    @tests.calculator_tests.enter_car_price(price)
end

When("I enter {string} in allowed mileage field") do |miles|
    @tests.calculator_tests.enter_mileage_limit(miles)
end

Then("I see allowed mileage limit error") do
    @tests.calculator_tests.error_mileage_is("Allowed mileage (yearly) must be bigger than 0.")
end