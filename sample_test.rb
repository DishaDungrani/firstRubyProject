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
#input text  sleep 5
    @element.send_keys('apple')
    sleep 5
    @driver.action.send_keys(:enter).perform
    sleep 5

    @element = wait.until { @driver.find_element(:xpath => "//*[@id='rso']/div/div/div[1]/div/div/h3/a") }
    sleep 5
    if(@element.text.include?("Apple"))
      puts "Page contains the text apple"

    end
    assert(@element.text.include?("test"),"Page contains the text apple")
    sleep 5
    puts @element.text


    # make some changes in a code
    # test cases
    # Code changes/Users/ddungrani-/RubymineProjects/firstRubyProject
    sleep 5

    # Hello this line is for comment, iot shouldn't show up for output.

  end
end