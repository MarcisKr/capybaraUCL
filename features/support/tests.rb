class Tests
    def initialize(pages)
      @pages = pages
    end 
    
    def login_tests
      @login_tests ||= LoginTest.new(@pages)
      @login_tests
    end

    def account_tests
      @account_tests ||= AccountTest.new(@pages)
      @account_tests
    end

    def calculator_tests
      @calculator_tests ||= CalculatorTest.new(@pages)
      @calculator_tests
    end
end