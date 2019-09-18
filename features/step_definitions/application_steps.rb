Then("I have created leasing application") do
    @tests.application_tests.in_application
end  

Then("I see {string} interest rate") do |percent|
    @tests.application_tests.interest_rate_is(percent)
end

Then("I delete created application") do
    @tests.account_tests.select_my_account
    @tests.account_tests.select_latest_app_delete
end