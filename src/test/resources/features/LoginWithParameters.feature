Feature: Login with parameters


@librarianParam
  Scenario: Login as librarian 49
    Given I am on the login page
    When I enter username "librarian49@library"
    And I enter password 'xHdfRYuD'
    And click the sign in button

    And there should be 5561 users
  Then dashboard should be displayed
  #numbercan be whatever you have there

@sutdentParam
  Scenario: Login as student30
    Given I am on the login page
    When I enter username "sutdent30@library"
    And I enter password 'IaT9YI0I'
    And click the sign in button
    And there should be 665 users
    Then books should be displayed


Scenario: Login as librarian same line
  Given I am on the login page
  When I login using "librarian12@library"and "AOYKYTMJ"
  Then dashboard should be displayed


