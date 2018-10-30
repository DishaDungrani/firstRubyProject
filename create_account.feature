Feature: As a client, I want to create Refinance and Buy a Home accounts

  Background:
    Given the app launched successfully
    Then I tap on Create Account button

  @common @create_account @refinance @smoke
  Scenario: Create a refinance account
    When I create a refinance account
    Then I am taken to the account verification screen
    Then I verify my new account and go to sign in screen
    Then I submit newly created Application account information in sign in screen
    Then I am taken to the new account screen
    Then I sign out from application

  @common @create_account @purchase @smoke
  Scenario: Create a purchase account
    When I create a purchase account
    Then I am taken to the account verification screen
    Then I verify my new account and go to sign in screen
    Then I submit newly created Application account information in sign in screen
    Then I am taken to the new account screen
    Then I sign out from application

  @common @create_account @existing_email @smoke
  Scenario: Create an account with existing email
    When I create an account with existing email
    Then I am taken to the sign in screen with account already have message