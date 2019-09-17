Feature: Leasing calculator
    @dev
    Scenario Outline: User creates <type> leasing application for <age> <brand> <model> that costs <price>
        Given I am in calculator page
        And I fill calculator for <type> leasing for <age> <brand> <model> that costs <price>
        When I approve conditions
        Then I have created leasing application

    Examples:
    | type        | age    | brand  | model | price  |
    | "financial" | "New"  | "Audi" | "A3"  | "9100" |
    | "operate"   | "New"  | "Audi" | "TT"  | "8500" |
    | "financial" | "2018" | "Audi" | "A3"  | "5000" |
    | "operate"   | "2018" | "Audi" | "TT"  | "7333" |