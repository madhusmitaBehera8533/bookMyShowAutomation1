Feature: Login Functionality on BookMyShow
  Scenario: Validate Login UI Elements are visible
    Given User is on Login page
    Then "Continue with Google" button is visible
    And "Continue with Email" button is visible
    And "Continue with Apple" button is visible
    And Mobile number input box is visible
    And "Continue" button is visible
  Scenario: Validate invalid mobile number input
    Given User is on Login page
    When User enters mobile number "12345"
    And User clicks "Continue"
    Then Error message "Please enter valid mobile number" is shown
  Scenario: Validate OTP entry - invalid OTP
    Given User is on OTP page after entering valid mobile number "9999999999"
    When User enters OTP "111111"
    And User clicks "Continue"
    Then Error message "Invalid OTP entered" is shown
  Scenario: Cancel Login process
    Given User is on Login page
    When User clicks "Cancel"
    Then User is redirected to homepage
