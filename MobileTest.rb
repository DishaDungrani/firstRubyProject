require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'
require 'test/unit'
require_relative 'page_object.rb'
#
#gem install selenium-webdriver
#sudo gem install selenium-webdriver
#gem update --system
#sudo gem install rails

#gem install appium_lib

class MobileTest < Test::Unit::TestCase


  def testPage


    pageobj=PageObject.new()
    sleep 5

    @element = pageobj.SignIn()

    pageobj.getUserNameField().send_keys('mobile0325')
    sleep 2
    pageobj.getPasswordField().send_keys('quicken123')
     sleep 2
    pageobj.clickUsername().click
     sleep 2
    pageobj.SignIn().click
    sleep 2



    assert_equal(true, @element.displayed?)#,failure_message=TestFailed)


    #@element = wait.until { @selenium_driver.find_element(:id => "com.quickenloans.myql.engbeta:id/rememberEmailSwitch") }
   # @element.click
    sleep 10

   # @element = wait.until { @selenium_driver.find_element(:id => "com.quickenloans.myql.engbeta:id/signInButtonWithUsername") }
   # @element.click
    #pageobj.getLoginButton().click()
    sleep 10


#puts @element.text


# make some changes in a code
# test cases
# Code changes

    sleep 5
    end

end
