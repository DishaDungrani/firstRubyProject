require 'rubygems'
require 'selenium-webdriver'
require 'test/unit'

class SampleTest < Test::Unit::TestCase

  def setup
#define driver for firefox webdriver
    Selenium::WebDriver::Chrome.driver_path="/Users/ddungrani-/Downloads/chromedriver"
    @driver = Selenium::WebDriver.for :chrome
    @driver.get("http://google.com")
  end

  def testPage
#define username field element
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    @element = wait.until { @driver.find_element(:id => "lst-ib") }
#searchBox=@driver.find_element(:id,'st-ib')
#input text
    @element.send_keys('SearchText')
    sleep 2
    @driver.action.send_keys(:enter).perform


    @element = wait.until { @driver.find_element(:xpath => "//*[@id='rso']/div/div/div[1]/div/div/h3/a") }

    assert(@element.text.include?("angular"),"Page contains the text angular")
    puts @element.text


    sleep 5

  end
end