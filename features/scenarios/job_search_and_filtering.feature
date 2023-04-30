@jobsearch
Feature: Job search and filtering
   As a job seeker using Glassdoor
    I want to be able to search for job vacancies 
    So that I can easily find jobs that are relevant to my skills


    Background:
        Given that I am on the Glassdoor homepage
        And I have entered a <job_title> and <location> in the search bar
         | job_title   | location  |
         | QA Engineer | sao paulo |

        And I have clicked on search

    
    Scenario: Basic Job Search
        Given I have searched for a job using the search bar
        Then I should see a list of job vacancies matching the search parameters

    
    Scenario: Saving a Job Vacancy
        When I find an interesting job vacancy
        And I click on the Save button next to the job listing
        Then the job vacancy should be saved to my account
        Then the job vacancy should be accessible from my Saved Jobs section in my profile.

   
    Scenario: Filtering for the latest job vacancies
        Given I have a list of jobs vacancies
        When I click on the published time filter
        And I choose the last 5 days
        Then I should only see job vacancies that were published within the last 5 days

    
    Scenario: Job Posting Details
        When I click on a job posting from the list of job vacancies
        Then I should be able to view detailed information about the job
        And there should be a button to apply for the job directly from the posting page.