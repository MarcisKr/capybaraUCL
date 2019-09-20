@dev
Feature: Leasing calculator
    
    Scenario Outline: User creates leasing application for car
        Given I am in calculator page
        And I fill calculator for <type> leasing for <age> <brand> <model> that costs <price>
        When I approve conditions
        Then I have created leasing application
        And I see <percent> interest rate
        And I delete created application

    Examples:
    | type        | age    | brand  | model | price  | percent  |
    | "financial" | "New"  | "Audi" | "A3"  | "9100" | "3.00 %" |
    | "operate"   | "New"  | "Audi" | "TT"  | "8500" | "3.45 %" |
    | "financial" | "2018" | "Audi" | "A3"  | "5000" | "3.45 %" |
    | "operate"   | "2018" | "Audi" | "TT"  | "7333" | "3.90 %" |
    
    Scenario: User sees monthly payment exceeds limit error
        Given I am in calculator page
        When I select "financial" leasing
        Then I see "Monthly payment exceeds monthly limit" calculator error
    
    Scenario: User sees downpayment too big error
        Given I am in calculator page
        When I enter car price - "0"
        Then I see "Down payment is too large" calculator error
    
    Scenario: User can't approve conditiions for car that costs 10k or more
        Given I am in calculator page
        And I select "financial" leasing
        When I approve conditions neg
        Then I am in leasing calculator