Feature: The add event form should only let the complete data to be saved

    The system should check if the mandatory form fields are filled before publishing
    the event.

    Scenario: The once when the user has not filled the mandatory fields

        Given the user open the form
        When the did not fill the mandatory fields
        Then the button remains deactivated

    Scenario: The once when the user has filled the mandatory fields

        Given the user open the form
        When the fill the mandatory fields
        Then the button appears activated

    Scenario: The once when the user saves without publish

        Given the user open the form
        When the user click "Save without publish"
        Then the data should be saved as a new "SAVED" event

    Scenario: The once when the user close the form without saving

        Given the user open the form
        When the user click on the "Cancel" button
        Then the form will be closed AND the event wont be saved or published

    Scenario: The once when the user save and publish the form

        Given the user has the mandatory fields filled AND the Button "Save and publish" is activated
        When the user click the button "Save and Publish"
        Then the event is saved with the flag "PUBLISHED"

