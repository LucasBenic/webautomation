Given('that I am on the Glassdoor homepage') do
    @login = LoginPage.new
    visit '/'
    @login.login
    @main = MainPage.new
  end

Given('I have entered a <job_title> and <location> in the search bar') do |table|
  search_info = table.hashes.first
  job_title = search_info['job_title']
  location = search_info['location']
  @main.jobsearch(job_title, location)
end
  
Given('I have clicked on search') do
  @main.search
end
  
  Given('I have searched for a job using the search bar') do
    expect((@main).searchbar.value).to be_truthy
  end
  
  Then('I should see a list of job vacancies matching the search parameters') do
    expect(@main.jobtitles).to have_content(/qa engineer/i)
    expect(@main.joblocation).to have_content(/são paulo/i)
    end
  
  When('I find an interesting job vacancy') do
    @main.job
  end
  
  When('I click on the Save button next to the job listing') do
    @main.savejob
  end
  
  Then('the job vacancy should be saved to my account') do
    expect(page).to have_button 'Salvo'
  end
  
  Then('the job vacancy should be accessible from my Saved Jobs section in my profile.') do 
    @main.savedjobs
    expect(page).to have_content(@main.instance_variable_get(:@company_name))
  end
  
  Given('I have a list of jobs vacancies') do 
    @main.jobtitles
  end

  When('I click on the published time filter') do 
    @main.pubtimefilter.click
  end

  When('I choose the last {int} days') do |int|
    @main.pubage(int)
  end

  Then('I should only see job vacancies that were published within the last {int} days') do |int|
    expect(@main.joblist).to have_text(/(\d+) dias/)
    days = @main.joblist.text.match(/(\d+) dias/)[1].to_i
    expect(days).to be <= int
  end
 
  When('I click on a job posting from the list of job vacancies') do
    @main.job
  end
  
  Then('I should be able to view detailed information about the job') do
    @main.showmore.click
    expect(@main.descrititle.text).to eq(@main.instance_variable_get(:@jobtitle))
  end
  
  Then('there should be a button to apply for the job directly from the posting page.') do
    if(@main.jobdescription).has_css?('button[data-test="applyButton"]')
      expect(@main.jobdescription).to have_content('Candidatura rápida')
    else 
      expect(@main.jobdescription).to have_content('Candidatar-se')
    end


  end






