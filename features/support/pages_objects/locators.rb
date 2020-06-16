class Locators

  def wait(param, timeout)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout)
    wait.until {param}
  end

  def find_elements_with_xpath(parametro)
    @driver.find_elements(:xpath,parametro)
  end

  def find_element_by_text(parametro)
    @driver.find_element(:xpath,"//*[contains(@text, '#{parametro}')]")
  end
end 