class MainPage < SitePrism::Page

    element :profileicon, 'div[data-test="user-profile-dropdown-trigger"]'
    element :myinfo, 'a[href="/member/profile/index.htm"]'

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
end