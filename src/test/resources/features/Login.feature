Feature: Login feature
  As a user I should be able to login
  Accounts are librarian, student


  @librarian
  Scenario: Login as librarian
    Given I am on the login page
    When I login as a librarian
    Then dashboard should be displayed

  @student
    Scenario: Login as student
      Given I am on the login page
      When I login as a student
      Then books should be displayed