Feature: The application should be able to register users on full events

    The system should register users when the event is active. The new registers
    should be flagged by the different situations of the register.

    Scenario: The once when the user tries to register on an active and not full event.

        Given the user is not registred in the event
        And the event is not full
        And the event is not finished
        When the user send the registration form
        Then should be a register in the database with a flag of "REGISTER_ON_EVENT"

    Scenario: The once when the user tries to register on an active and full event.

        Given the user is not registred in the event
        And the event is full
        And the event is not finished
        When the user send the registration form
        Then should be a register in the database with a flag of "REGISTER_ON_FULL_EVENT"

    Scenario: The once when the user tries to register on a finished event.

        Given the user is not registred in the event
        And the event is not full
        And the event is finished
        When the user send the registration form
        Then should be a register in the database with a flag of "INTERESTED_ON_EVENT"
        And the user should see a modal stating "The event is finished and is not possible to register now"