Feature: Leasing calculator
    @wip
    Scenario Outline: User creates leasing application for car
        Given I am in calculator page with user - "00000000000"
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
        Given I am in calculator page with user - "00000000000"
        When I select "financial" leasing
        Then I see "Monthly payment exceeds monthly limit" calculator error
    
    Scenario: User sees first payment too big error
        Given I am in calculator page with user - "00000000000"
        When I enter car price - "0"
        Then I see "Down payment is too large" calculator error
    @zap
    Scenario: Allowed mileage must be bigger than 0
        Given I am in calculator page with user - "00000000000"
        And I fill calculator for "operate" leasing for "New" "SKODA" "OCTAVIA" that costs "7777"
        When I enter "0" in allowed mileage field
        And I approve conditions
        Then I am in leasing calculator
    @zap
    Scenario: User can't approve conditions for car that costs more than 30k
        Given I am in calculator page with user - "00000000000"
        And I fill calculator for "financial" leasing for "New" "Audi" "TT" that costs "30000"
        When I approve conditions neg
        Then I am in leasing calculator
    
    Scenario: First payment can't be the same or bigger than the price
        Given I am in calculator page with user - "00000000000"
        And I fill calculator for "financial" leasing for "2018" "VW" "PASSAT" that costs "10000"
        When I enter "10000" in first payment field
        Then first payment amount is - "1000"
