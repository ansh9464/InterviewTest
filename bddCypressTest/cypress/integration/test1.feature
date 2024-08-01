Feature: User Signup and SignIn Functionality 

#Author:Ansh Jindal

#CREATE ACCOUNT FUNCTIONALITY

Scenario: Verify the error message when user doesn't enter first name
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "user2" for "#lastname" input with occurence 0
    Then I enter "test2@gmail.com" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I enter "test2user2@" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "This is a required field." text appears on screen

Scenario: Verify the error message when user doesn't enter last name
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#firstname" input with occurence 0
    Then I enter "test2@gmail.com" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I enter "test2user2@" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "This is a required field." text appears on screen

Scenario: Verify the error message when user doesn't enter email
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#firstname" input with occurence 0
    Then I enter "user2" for "#lastname" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I enter "test2user2@" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "This is a required field." text appears on screen

Scenario: Verify the error message when user doesn't enter password field
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#firstname" input with occurence 0
    Then I enter "user2" for "#lastname" input with occurence 0
    Then I enter "test2@gmail.com" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "This is a required field." text appears on screen

Scenario: Verify the error message when user doesn't enter confirm password field
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#firstname" input with occurence 0
    Then I enter "user2" for "#lastname" input with occurence 0
    Then I enter "test2@gmail.com" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "This is a required field." text appears on screen

Scenario: Verify the error message when user doesn't enter correct password in confirm password field
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#firstname" input with occurence 0
    Then I enter "user2" for "#lastname" input with occurence 0
    Then I enter "test2@gmail.com" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I enter "test2user" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "Please enter the same value again." text appears on screen

Scenario: Verify the error message when user enters invalid email
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#firstname" input with occurence 0
    Then I enter "user2" for "#lastname" input with occurence 0
    Then I enter "test2" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I enter "test2user2@" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "Please enter a valid email address (Ex: johndoe@domain.com)." text appears on screen

Scenario: Verify the error message when password is weak
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#password" input with occurence 0
    Then I enter "test2" for "#password-confirmation" input with occurence 0
    Then I verify "Minimum length of this field must be equal or greater than 8 symbols. Leading and trailing spaces will be ignored." text appears on screen
    Then I enter "test2user" for "#password" input with occurence 0
    Then I enter "test2user" for "#password-confirmation" input with occurence 0
    Then I verify "Minimum of different classes of characters in password is 3. Classes of characters: Lower Case, Upper Case, Digits, Special Characters." text appears on screen

Scenario: Verify error message with invalid first name
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "anhs@!@#@#>CELMDKEM" for "#firstname" input with occurence 0
    Then I enter "user2" for "#lastname" input with occurence 0
    Then I enter "test2user22@gmail.com" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I enter "test2user2@" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "First Name is not valid!" text appears on screen

Scenario: Verify error message with invalid last name
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#firstname" input with occurence 0
    Then I enter "anhs@!@#@#>CELMDKEM" for "#lastname" input with occurence 0
    Then I enter "test2user22@gmail.com" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I enter "test2user2@" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "Last Name is not valid!" text appears on screen with occurrence 0

Scenario: User successfully Creates a account
    Given I navigate to website
    Then I click on "a" link with text "Create an Account"
    Then I enter "test2" for "#firstname" input with occurence 0
    Then I enter "user2" for "#lastname" input with occurence 0
    Then I enter "test2user22@gmail.com" for "#email_address" input with occurence 0
    Then I enter "test2user2@" for "#password" input with occurence 0
    Then I enter "test2user2@" for "#password-confirmation" input with occurence 0
    Then I click on "button" button with text "Create an Account"
    Then I verify "My Account" text appears on screen


# SIGNIN FUNCTIONALITY

Scenario: User should get error for empty email field
    Given I navigate to website
    Then I click on "a" link with text "Sign In"
    Then I enter "test2" for "#pass" input with occurence 0
    Then I click on "button" button with text "Sign In"
    Then I verify "This is a required field." text appears on screen

Scenario: User should get error for empty password field
    Given I navigate to website
    Then I click on "a" link with text "Sign In"
    Then I enter "test2@gmail.com" for "#email" input with occurence 0
    Then I click on "button" button with text "Sign In"
    Then I verify "This is a required field." text appears on screen

Scenario: User should get error for invalid email
    Given I navigate to website
    Then I click on "a" link with text "Sign In"
    Then I enter "test" for "#email" input with occurence 0
    Then I click on "button" button with text "Sign In"
    Then I verify "Please enter a valid email address (Ex: johndoe@domain.com)." text appears on screen

Scenario: User successfully Sign In into the account
    Given I navigate to website
    Then I click on "a" link with text "Sign In"
    Then I enter "test2user2@gmail.com" for "#email" input with occurence 0
    Then I enter "test2user2@" for "#pass" input with occurence 0
    Then I click on "button" button with text "Sign In"
    Then I verify "Hot Sellers" text appears on screen 