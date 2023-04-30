class MainPage < SitePrism::Page

    element :profileicon, 'div[data-test="user-profile-dropdown-trigger"]'
    element :myinfo, 'a[href="/member/profile/index.htm"]'
    element :searchbar, id: 'sc.keyword'
    element :locationbar, id: 'sc.location'
    element :joblist, id: 'MainCol'
    element :pubtimefilter, id: 'filter_fromAge'
    element :jobdescription, '.scrollable'
    element :descrititle, 'div[data-test="jobTitle"]'
    element :showmore, '.e856ufb4'
    element :searchbtn, 'button[data-test="search-bar-submit"]'
   

#-----------------------------------------------------------------------------------------------
#Methods related to profile setting
    def profile
        profileicon.click
        myinfo.click
    end
    
    def upname(firstname, lastname)
        find('a[href="#addName"]').click
        find('input[aria-label="Nome"]').set(firstname)
        find('input[aria-label="Sobrenome"]').set(lastname)
    end

    def upjobtitle(jobtitle)
        find('a[href="#job-title"]').click
        find('input[name="jobTitle"]').set(jobtitle)
    end

    def upcompanyname(name)
        find('a[href="#company-name"]').click
        find('input[name="companyName"]').set(name)
    end

    def employmentstatus(status)
        select_box = find('div[data-test^="employment"]').click
        select_box.find("#option_#{status}").click
    end
#------------------------------------------------------------------------------------------------
#Methods related to job searching
    def jobsearch(job_title, location)
        searchbar.set(job_title)
        locationbar.set(location)
    end

    def search
        searchbtn.click
        if page.has_button? 'Ativar'
            send_keys :escape
        end
    end

    def jobtitles
        joblist.all('.react-job-listing').map do |title|
            title['data-normalize-job-title']
        end
    end

    def joblocation
        joblist.all('.react-job-listing').map do |locate|
          locate['data-job-loc']
        end
    end

    def job
        @vacancy = joblist.all('.react-job-listing').sample
        @company_name = @vacancy.all('a.jobLink')[1].text
        @jobtitle = @vacancy.all('a.jobLink')[2].text
        puts 'Company name: ' + @company_name
        puts 'Job title: ' + @jobtitle
        @vacancy.click
    end

    def savejob
       @vacancy.find('button[class^="save-job-button"]').click
    end

    def savedjobs
        find('[class$="notificationsIconContainer"]').hover
        click_link('Candidatar-se', match: :first)
    end

    def pubage(age)
        case
        when age <= 3
          age = 3
        when age > 3 && age < 8
          age = 7
        when age > 7 && age < 15
          age = 14
        else
          age = 30
        end
    
        find("button[value='#{age}']").click
        sleep 1
    end 


end