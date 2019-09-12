class LoginPage < BasePage
  def initialize
    @tab_smartid = Element.new(:xpath, "//html/body/descendant::button[@name = 'SMART_ID']")
    @tab_mobileid = Element.new(:xpath, "//html/body/descendant::button[@name = 'MOBILE_ID']")
    @tab_idcard = Element.new(:xpath, "//html/body/descendant::button[@name = 'ID_CARD']")
    @input_person_code = Element.new(:xpath, "//html/body/descendant::input[@name = 'personCode']")
    @input_phone = Element.new(:xpath, "//html/body/descendant::input[@name = 'phone']")
    @button_next = Element.new(:xpath, "//html/body/descendant::button[@name = 'next']")
    @error_person_code = Element.new(:xpath, "//html/body/descendant::input[@name = 'personCode']/following::div[@class = 'invalid-feedback']")
    @input_phone_number = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'phone']")
    @error_phone_number = Element.new(:xpath, "//*[@id='e_application_root']/descendant::input[@name = 'phone']/following::div[@class = 'invalid-feedback'][1]")
  end

  def visible?
    @tab_smartid.visible?
    @tab_mobileid.visible?
    @tab_idcard.visible?
    @button_next.visible?
  end

  def fill_person_code(code)
    @input_person_code.send_keys(code)
  end

  def click_next_button_pos
    while @button_next.disabled? == true
    end
    @button_next.click
  end

  def click_next_button_neg
    @button_next.click
  end

  def clear_person_code
    @input_person_code.clear_text
  end

  def match_error_person_code(er)
    @error_person_code.text_is(er)
  end

  def match_error_phone_number(er)
    @error_phone_number.text_is(er)
  end

  def submit_person_code
    @input_person_code.send_keys(:return)
  end

  def submit_phone_number
    @input_phone_number.send_keys(:return)
  end

  def select_mobileid
    @tab_mobileid.click
  end

  def fill_mobile_number(number)
    @input_phone_number.send_keys(number)
  end

  def load
    visit('/login')
  end
end