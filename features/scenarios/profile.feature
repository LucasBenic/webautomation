@profile
Feature: Profile
    As an user of Glassdoor
    I want to be able to update my informations
    So my profile stay up-to-date

    
    Scenario: Updating personal name
        Given I am logged into my Glassdoor account
        When I navigate to the Edit profile section
        And I update my name to "Lucas" "Prodocio"
        And I save the changes
        Then my profile should show my name "Lucas" "Prodocio"


    Scenario: Updating job title
        Given I am logged into my Glassdoor account
        When I navigate to the Edit profile section
        And I update my job title to " QA Engineer"
        And I save the changes
        Then my profile should show my new job title "QA Engineer"


    Scenario: Updating company name
        Given I am logged into my Glassdoor account
        When I navigate to the Edit profile section
        And I update the company name to " Lenovo"
        And I save the changes
        Then my profile should show the company name "Lenovo"


    Scenario: Changing employment status
        Given I am logged into my Glassdoor account
        When I navigate to the Edit profile section
        And change my employment status to "STUDENT"
        Then my profile should show my new employment status "Estudante"


