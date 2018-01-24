require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'
require 'test/unit'


class PageObject


  def initialize()
    desired_caps = {
        caps:  {
            platformName:  'Android',
            platformVersion: '8.1.0',
            deviceName:    'Pixel2',
            #  browserName:   'chrome',
            app_package:'com.quickenloans.myql.engbeta',
            app_activity:'com.quickenloans.pex.activities.SplashActivity'
            # SplashActivity is the main activity for RM app
        }

    }
    @appium_driver = Appium::Driver.new(desired_caps)
    @selenium_driver = @appium_driver.start_driver
    #@selenium_driver.get("http://www.google.com/")
  end

  def getUserNameField()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
    @element =  wait.until{ @selenium_driver.find_element(:xpath =>  "//android.widget.EditText[@text = 'Username']") }
    return @element
  end


  def getPasswordField()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    @element = wait.until { @selenium_driver.find_element(:xpath => "//android.widget.EditText[@text= 'Password']") }
    return @element
  end

  def clickUsername()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    @element = wait.until { @selenium_driver.find_element(:id => "com.quickenloans.myql.engbeta:id/rememberEmailSwitch") }
    return @element
  end

  def SignIn()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    @element = wait.until { @selenium_driver.find_element(:id => "com.quickenloans.myql.engbeta:id/signInButtonWithUsername") }
    return @element
  end


end