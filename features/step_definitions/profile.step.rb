Given('I am logged into my Glassdoor account') do
  @login = LoginPage.new
  visit '/'
  @login.login
end

When('I navigate to the Edit profile section') do
  @main = MainPage.new
  @main.profile
end

When('I update my name to {string} {string}') do |string, string2|
  @main.upname(string, string2)
end

When('I save the changes') do
  click_button 'Salvar'
end

Then('my profile should show my name {string} {string}') do |string, string2|
  expect(page).to have_text ("#{string} #{string2}")
end

When('I update my job title to {string}') do |string|
  @main.upjobtitle(string)
end

Then('my profile should show my new job title {string}') do |string|
  expect(page).to have_text ("#{string}")
end

When('I update the company name to {string}') do |string|
  @main.upcompanyname(string)
end

Then('my profile should show the company name {string}') do |string|
  expect(page).to have_text ("#{string}")
end

When('change my employment status to {string}') do |string|
  @main.employmentstatus(string)
end

Then('my profile should show my new employment status {string}') do |string|
  selected = find('[data-test^="employment"] > .selectedLabel')
  expect(selected.text).to eq("#{string}")
end









  
  


