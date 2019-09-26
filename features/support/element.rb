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
    if ENV['safari']
      find.click()
    else
      find.click
    end
  end

  def send_keys(value)
    find.native.send_keys value
  end

  def text_is(text)
    find.assert_text(text)
  end

  def value_is(value)
    find.value == value
  end

  def disabled?
    find.disabled?
  end

  def clear_text
    find.value.length.times { find.send_keys [:backspace]}
  end

  def check
    find.check()
  end

  def select(value)
    find.select(value)
  end

  def set(value)
    find.set(value)
  end
end