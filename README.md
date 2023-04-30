# Web Automation (Glassdoor)



> This project uses Ruby and some frameworks to automate various actions on the Glassdoor website, including logging in, searching for jobs and updating profile information.

<h3 align="left">Languages and Tools:</h3>

<p align="left">
  <a href="https://git-scm.com/" target="_blank" rel="noreferrer" title="Git">
    <img src="https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg" alt="git" width="40" height="40"/>
  </a>
  <a href="https://www.ruby-lang.org/en/" target="_blank" rel="noreferrer" title="Ruby">
    <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/>
  </a>
  <a href="https://cucumber.io/" target="_blank" rel="noreferrer" title="Cucumber">
    <img src="https://cdn.worldvectorlogo.com/logos/cucumber.svg" alt="cucumber" width="40" height="40"/>
  </a>
  <a href="https://teamcapybara.github.io/capybara/" target="_blank" rel="noreferrer" title="Capybara">
    <img src="https://img.stackshare.io/service/2595/capybara.png" alt="capybara" width="40" height="40"/>
  </a>
  <a href="https://rspec.info/" target="_blank" rel="noreferrer" title="RSpec">
    <img src="https://rspec.info/images/logo_ogp.png" alt="rspec" width="40" height="40"/>
  </a>
  <a href="https://www.selenium.dev/documentation/en/webdriver/" target="_blank" rel="noreferrer" title="Selenium WebDriver">
    <img src="https://static-00.iconduck.com/assets.00/selenium-icon-512x496-obrnvg2v.png" alt="Selenium WebDriver" width="40" height="40"/>
</a>
</p>


<<<<<<< HEAD
## Features and Scenarios


### Profile
 - Updating personal name
 - Updating job title
 - Updating company name
 - Changing employment status

### Job search and filtering
- Basic Job Search
- Saving a Job Vacancy
- Filtering for the latest job vacancies
- Job Posting Details

## 💻 Prerequisites

To run this project, you will need the following:

* Glassdoor account
* Google Chrome web browser
* Ruby 2.6 or higher
* ChromeDriver executable file for your operating system

- Note: If you don't have Ruby installed on your machine, you can download it from the official Ruby website: https://www.ruby-lang.org/en/downloads/
- You can download the latest version of ChromeDriver for your operating system from the following link: https://chromedriver.chromium.org/downloads
- Once you have downloaded the ChromeDriver executable file, make sure to add its location to your system's PATH environment variable.

## 🚀 Installiing the project

To install the project, follow these steps:

Clone the project:
```
git clone https://github.com/LucasBenic/webautomation.git
```
Go to the project directory and open a terminal.
Install the Bundle gem:
```
gem install bundler
```
Now install all the necessary gems:
```
bundle install
```


## ☕ Using the project

To use the project, follow these steps:

First, you need to set your Glassdoor credentials. To do that, follow the steps:

1. Go to the project directory.
2. Go to features folder.
3. Go to pages folder.
4. Go to login.page.rb file.
5. Set your email and password in the email and password variables and save it.

![image](https://user-images.githubusercontent.com/128319082/235361005-24a76e42-9535-4350-ab05-1f5977cc1d0e.png)


To run all the features, just type cucumber in your terminal:
```
cucumber
```
To run a specific feature, type:
```
cucumber --tags @<tagname>
```
To run a specific scenario, type:
```
cucumber --name "<scenario name>"
```
After running the tests a report will be generated and placed in the report folder.

![image](https://user-images.githubusercontent.com/128319082/235360668-8b1559eb-cc58-496c-8f5d-e0dd0c915b64.png)


If the test fails a screenshot will be taken and placed in the screenshot folder.

![image](https://user-images.githubusercontent.com/128319082/235360640-202da796-0957-4076-99fe-50a90c099848.png)




### Contact

If you have any questions or feedback about this project, please contact me at lucas.pro23@outlook.com.
=======
Test automation is an essential part of the software development life cycle and helps in ensuring the quality of the software. The approach outlined in this document provides a high-level overview of the test automation process for Glassdoor. It is important to continuously update and maintain the test suite to ensure that it covers all the functional and non-functional requirements of the Glassdoor website.

>>>>>>> main
