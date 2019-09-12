class Pages
  def page_login
    @page_login ||= LoginPage.new
    @page_login
  end

  def page_account
    @page_account ||= AccountPage.new
    @page_account
  end

  def page_calculator
    @page_calculator ||= CalculatorPage.new
    @page_calculator
  end
end