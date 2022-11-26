Feature: User should be able to only be registred to one event at the same agended hour

    The system should not let the users to register on events that are on the same
    hour. The users could change the preferred register event.

    Scenario: The once when the user try to register to 2 events and dont want to change the event

        Given the user is registred into an event
        And the user is prompted with a modal that ask if the user wants to change the event
        When the user click the option to stay on the already registred event
        Then the user will not be changed of event
        And the decision will be stored in a table

    Scenario: The once when the user try to register to 2 events and want to change the event

        Given the user is registred into an event
        And the user is prompted with a modal that ask if the user wants to change the event
        When the user click the option to change to the new event
        Then the user will be changed of event
        And the decision will be stored in a table

    Scenario: The once when the user try to register to 2 events and they want to cancell the request

        Given the user is registred into an event
        And the user is prompted with a modal that ask if the user wants to change the event
        When the user click the option to cancel the request
        Then the user will not be changed of event
        And the decision will not be stored in a table
