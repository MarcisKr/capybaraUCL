class AccountPage
  def initialize
    @button_lease_calculator = Element.new(:xpath, "//*[@id='e_application_root']/descendant::button[@class = 'btn btn-danger btn-block']")
    @button_logout = Element.new(:xpath, "//*[@id='e_application_root']/descendant::a[@href = '/en/e-application/logout']")
    @button_my_account = Element.new(:xpath, "//*[@id='account-link-btn']/descendant::span[text() = 'My account']")
    #@list_applications = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'application-list-content']/descendant::div[@class='application']")
    @button_latest_app_delete = Element.new(:xpath, "//*[@id='e_application_root']/descendant::div[@class = 'application-list-content']/descendant::div[@class='application'][1]/descendant::button[1]")
  end

  def visible?
    @button_lease_calculator.visible?
    @button_logout.visible?
  end

  def select_my_account
    @button_my_account.click
  end

  def select_latest_app_delete
    @button_latest_app_delete.click
  end

  def open_calculator
    @button_lease_calculator.click
  end

  def load
    visit('/account')
  end
end