@sep16
Feature: Click on the next button on payment plans page   #! Test Only

    As a customer, I should be able to click on the next button on step 2 when I select a plan.

    #* AC1: Clicking on any plan should activate the next button (DONE)
    #* AC2: When the customer clicks on the next button, the Step 3 page should be displayed. (DONE)
    #* AC3: In the stepper, steps 1 and 2 should be green, and step 3 should be blue. (DONE)
    #* AC4: The payment component should be displayed.
    #* AC5: A price summary should be displayed.
    #* AC6: The back button should be displayed and enabled.

    # Green	rgb(172, 245, 138)
    # Blue	rgb(1, 201, 255)


    #TODO: Create scenarios that cover all the acceptance criteria

    Background:
        Given user is on the enrollment page
        And user completed the start application step

    @sep16-1
    Scenario: verify that Clicking on any plan should activate the next button
        Then the next button on payment plan page should be disabled by default
        When the user selects a payment plan
        Then the next button on payment plan page should become active
    
    @sep16-2
    Scenario: verify that after clicking next button, the Step 3 page should be displayed
        Then the steps2 stepper should be blue
        When the user selects a payment plan
        And the user clicks the next button on payment plan page
        Then the steps1 stepper should be green
        And the steps2 stepper should be green
        And the step3 stepper should be blue

    @sep16-3
    Scenario: verify that payment plan summary is displayed when a payment plan is selected
        When the user selects a payment plan
        Then the upfront payment plan summary should be displayed
        When the user selects Installments payment plan
        Then the installement plan summary should be displayed

    @sep16-4
    Scenario: verify that the back button is displayed and enabled
       Then the back button is disabled
       When the user clicks the back button
       Then the steps1 stepper should be blue



