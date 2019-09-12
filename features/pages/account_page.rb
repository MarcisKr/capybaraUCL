class AccountPage
  def initialize
    @button_lease_calculator = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[@class = 'btn btn-danger btn-block']")
    @button_logout = Element.new(:xpath, "//*[@id='e_application_root']/descendant::a[@href = '/en/e-application/logout']")
    #@list_applications = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'application-list-content']/descendant::div[@class='application']")
  end

  def visible?
    @button_lease_calculator.visible?
    @button_logout.visible?
  end

  def open_calculator
    @button_lease_calculator.click
  end

  def load
    visit('/account')
  end
end