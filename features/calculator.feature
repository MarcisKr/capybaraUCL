Feature: Leasing calculator
    @dev
    Scenario Outline: User creates <type> leasing application for <age> <brand> <model> that costs <price>
        Given I am in calculator page
        And I fill calculator for <type> leasing for <age> <brand> <model> that costs <price>
        When I approve conditions
        Then I have created leasing application
        And I see <percent> interest rate

    Examples:
    | type        | age    | brand  | model | price  | percent  |
    | "financial" | "New"  | "Audi" | "A3"  | "9100" | "3.00 %" |
    | "operate"   | "New"  | "Audi" | "TT"  | "8500" | "3.45 %" |
    | "financial" | "2018" | "Audi" | "A3"  | "5000" | "3.45 %" |
    | "operate"   | "2018" | "Audi" | "TT"  | "7333" | "3.90 %" |