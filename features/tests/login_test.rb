class LoginTest
  def initialize(pages)
      @pages = pages
  end

  def load_login_page
    @pages.page_login.load
    @pages.page_login.visible?
  end

  def fill_person_code(code)
    @pages.page_login.fill_person_code(code)
  end

  def select_next_button_pos
    @pages.page_login.click_next_button_pos
  end

  def select_next_button_neg
    @pages.page_login.click_next_button_neg
  end

  def logged_in
    @pages.page_account.visible?
  end

  def clear_person_code
    @pages.page_login.clear_person_code
  end

  def match_error_person_code(er)
    @pages.page_login.match_error_person_code(er)
  end

  def match_error_phone_number(er)
    @pages.page_login.match_error_phone_number(er)
  end

  def in_login_page
    @pages.page_login.visible?
  end

  def submit_person_code
    @pages.page_login.submit_person_code
  end

  def submit_phone_number
    @pages.page_login.submit_phone_number
  end

  def select_mobileid
    @pages.page_login.select_mobileid
  end

  def fill_mobile_number(number)
    @pages.page_login.fill_mobile_number(number)
  end
end
