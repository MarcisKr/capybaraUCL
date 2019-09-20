Given("I am in account page") do
    @tests.login_tests.load_login_page
    @tests.login_tests.fill_person_code("00000000000")
    @tests.login_tests.select_next_button(false)
    @tests.login_tests.logged_in
end

When("I select lease calculator button") do
    @tests.account_tests.open_calculator
end
