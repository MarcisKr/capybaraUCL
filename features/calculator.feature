Feature: Leasing calculator
    @dev
    Scenario: User creates financial leasing application for new car
        Given I am in calculator page
        And I fill calculator for "financial" leasing for "New" car
        When I approve conditions
        Then I have created leasing application