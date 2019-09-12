class Element
  def initialize(type, value)
    @value = Hash[:type => type, :value => value]
  end

  def find
    Capybara.find(@value[:type], @value[:value])
  end

  def visible?
    find.visible?
  end

  def click
    find.click
  end

  def send_keys(value)
    find.native.send_keys value
  end

  def text_is(text)
    find.assert_text(text)
  end

  def disabled?
    find.disabled?
  end

  def clear_text
    find.set ' '
  end
end