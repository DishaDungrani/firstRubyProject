def getUserNameField()
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  @element =  wait.until{ @selenium_driver.find_element(:xpath =>  "//android.widget.EditText[@text = 'Username']") }
  return @element
end
