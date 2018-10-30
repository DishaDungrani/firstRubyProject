Feature: As a client, I want to create a digital signature so that I can digitally sign my documents

  Background:
    Given the app launched successfully
    And I submit single-loan Origination account information
    Then I dismiss notifications alert
    Then I am taken to the Next Steps screen

  @origination @esign @digital_signature
  Scenario: Create digital signature and complete the Application Package tracking item
    When I select the application package tracking item
    Then I am taken to an e-signable tracking item detail view screen
    And I tap the E-Sign button
    Then I am taken to the document list screen
    Then I select a document
    Then I am taken to the document viewer screen
    Then I paginate to the signature needed page
    Then I tap the Tap to Sign button
    Then I am taken to the signature capture screen
    Then I create my digital signature
    Then I save my digital signature
    Then I am taken to the document viewer screen
    Then I finish signing the document if more signatures are required
    Then I am taken to the document list screen
    And I sign remaining documents
    Then I am taken to the Next Steps screen