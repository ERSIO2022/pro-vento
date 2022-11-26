Feature: The users should have a feed with personalized content

    The system should have a feed that shows the events to show to the user
    based on their account characteristics, interactions with the system and
    chosen interests from the user.

    Scenario: The once when the user has open the feed

        Given the user has categories on their account
        When the user opens the feed
        Then the feed reveals the next events
        And order them from the aproximate events to the farthest

    Scenario: The once when system autoselect the filters based on the interest of the user

        Given the user has categories on their account
        When the user opens the feed
        Then the feed autoselect filters
        And display the events that have the selected categories

    Scenario: The once when the user change the selected interests

        Given the user has categories on their account
        And the user is on the feed
        When the user change the filter options
        Then the feed changes its contents with the selected filter options

    Scenario: The once when the user has not any category added

        Given the user has not stored categories
        And the user has not filters selected
        When the user opens the feed
        Then the feed will show all the events regard the categories

    Scenario: The once when the user change the order of the events

        Given the user have open the feed
        When the user select the order selector button
        Then the feed will show in a diferent order the events

    Scenario: The once when the user check the already passed events

        Given the user have open the feed
        When the user scroll up the feed
        Then the feed should show the already passed events