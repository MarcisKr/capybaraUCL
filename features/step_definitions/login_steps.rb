Given("I am in EAPP login page") do
    @tests.login_tests.load_login_page
end

Given("I fill in person code field with {string}") do |code|
    @tests.login_tests.fill_person_code(code)
end

When("I fill in mobile phone field with {string}") do |number|
    @tests.login_tests.fill_mobile_number(number)
end    

When("I select NEXT button") do
    @tests.login_tests.select_next_button_pos
end

When("I select NEXT button disabled") do
    @tests.login_tests.select_next_button_neg
end

Then("I am logged in EAPP") do
    @tests.login_tests.logged_in
end

When("I clear person code field") do
    @tests.login_tests.clear_person_code
end

Then("I see {string} error") do |er|
    @tests.login_tests.match_error_person_code(er)
end

Then("I see {string} phone error") do |er|
    @tests.login_tests.match_error_phone_number(er)
end

Then("I am still in login page") do
    @tests.login_tests.in_login_page
end

When("I submit person code with enter") do
    @tests.login_tests.submit_person_code
end

When("I submit phone number with enter") do
    @tests.login_tests.submit_phone_number
end

When("I am in Mobile-ID tab") do
    @tests.login_tests.select_mobileid
end