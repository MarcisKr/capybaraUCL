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

  def disabled?
    find.disabled?
  end

  def clear_text
    if ENV['firefox']
      find.set ''
    else
      find.set ' '
    end
  end

  def check
    find.check()
  end

  def select(value)
    if ENV['safari']
      find.select_value()#WIP don't  know what's the issue
    else
      find.select(value)
    end
  end
end