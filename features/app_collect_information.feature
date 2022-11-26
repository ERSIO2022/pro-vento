Feature: The application should recolect data from the events

    The system should recieve data from the register to an event, throught
    the interaction of the users with the system, this information will be stored
    on the database categorized.

    Scenario: The once when the user tries to register

        Given the user is not registred in the event
        When the user click is registred on the event
        Then should be a register in the database

    Scenario: The once when the event is full and the user tries to register

        Given the event is full
        When the user tries to register
        Then the user is not registred to the event 
        And the user is registred as interested to the event

    Scenario: The once when the user register the day of the event and exist availability

        Given the user is in the day of the event
        And is not registred
        And exists availability in the event
        When the user tries to enter to the event
        Then the user is registred to the event
        And a flag is added to show the user registred the day of the event

    Scenario: The once when the user register the day of the event and dont exist availability

        Given the user is in the day of the event
        And is not registred
        And not exist availability in the event
        When the user tries to enter to the event
        Then the user is registred as interested to the event
        And a flag is added to show the user tried to registred the day of the event

    Scenario: The once when the user tries to register on a finished event

        Given the event has ended
        When the user tries to register to the event
        Then the user will not be able to register to the event
        And the user will see a warning saying that the event has already finish

    Scenario: The once when the user tries to register on the event

        Given the user unregistred to a certain event
        When the user click the register button
        Then the button should be disabled until the request is returned

    Scenario: The once when the user clicks multiple times the register button

        Given the user unregistred to a certain event
        When the user click the register button many times
        Then the user will be registred only one time