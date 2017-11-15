require 'rubygems'
require 'appium_lib'

#
#gem install selenium-webdriver
#sudo gem install selenium-webdriver
#gem update --system
#sudo gem install rails

#gem install appium_lib
#Saraths-MBP:bin root# sudo gem install appium_lib -n /usr/local/bin/
#
#
#


class one_more_file

  desired_caps = {
      caps:  {
          platformName:  'Android',
          platformVersion: '5.1',
          deviceName:    'Nexus_5_API_22_x86',
          browserName:   'Browser',
      }
  }
  @appium_driver = Appium::Driver.new(desired_caps)
  @selenium_driver = @appium_driver.start_driver
  @selenium_driver.get("http://www.google.com/")
  @selenium_driver.get("http://www.google.com/")

end
